App.controller('DashboardController', ['$scope', 'Subscription', function($scope, Subscription) {
  var subscriptions = [];

  $scope.initialize = function(options) {
    // store subscriptions as Subscription objects?
    $scope.services = options.services;
    subscriptions = options.subscriptions;
  };

  $scope.updateSubscription = function(service) {
    new Subscription({
      name: service.name
    }).create();
  };

  $scope.isSubscribed = function(service) {
    return subscriptions.some(function(subscription) {
      return subscription.name == service.name;
    });
  };
}]);
