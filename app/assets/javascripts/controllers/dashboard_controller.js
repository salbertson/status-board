App.controller('DashboardController', ['$scope', 'Subscription', function($scope, Subscription) {
  var subscriptions = [];

  $scope.initialize = function(options) {
    $scope.services = options.services;
    subscriptions = options.subscriptions.map(function(subscription) {
      return new Subscription(subscription);
    });
  };

  $scope.updateSubscription = function(service) {
    var subscription = $scope.findSubscription(service);

    if (subscription) {
      deleteSubscription(subscription);
    } else {
      createSubscription(new Subscription({ service_id: service.id }));
    }
  };

  $scope.findSubscription = function(service) {
    return subscriptions.filter(function(subscription) {
      return subscription.serviceId == service.id;
    })[0];
  };

  function deleteSubscription(subscriptionToRemove) {
    subscriptions.forEach(function(subscription, index) {
      if (subscriptionToRemove == subscription) {
        subscriptions.splice(index, 1);
      }
    });
    subscriptionToRemove.remove();
  }

  function createSubscription(subscription) {
    subscriptions.push(subscription);
    subscription.create();
  }
}]);
