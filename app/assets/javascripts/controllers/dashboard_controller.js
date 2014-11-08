App.controller('DashboardController', ['$scope', 'Subscription', function($scope, Subscription) {
  var subscriptions = [];

  $scope.initialize = function(options) {
    // store subscriptions as Subscription objects?
    $scope.services = options.services;
    subscriptions = options.subscriptions;
  };

  $scope.updateSubscription = function(service) {
    if ($scope.isSubscribed(service)) {
      var subscription = new Subscription({ id: service.name, name: service.name })
      deleteSubscription(subscription);
    } else {
      var subscription = new Subscription({ name: service.name });
      createSubscription(subscription);
    }
  };

  $scope.isSubscribed = function(service) {
    return subscriptions.some(function(subscription) {
      return subscription.name == service.name;
    });
  };

  function deleteSubscription(subscriptionToRemove) {
    subscriptions.forEach(function(subscription, index) {
      if (subscription.name == subscriptionToRemove.name) {
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
