App.controller('ApplicationController', ['$scope', 'User', 'Integration', function($scope, User, Integration) {
  $scope.showSettings = false;

  $scope.initialize = function(options) {
    $scope.user = new User(options.user);
    $scope.slack = new Integration(options.slack);
  };

  $scope.openSettings = function() {
    $scope.showSettings = true;
  };

  $scope.closeSettings = function() {
    $scope.showSettings = false;
  };

  $scope.updateSettings = function() {
    $scope.user.$patch('/user');

    if ($scope.slack.settings && $scope.slack.settings.url) {
      $scope.slack.save();
    }

    if ($scope.slack.settings && !$scope.slack.settings.url) {
      $scope.slack.delete();
      $scope.slack.id = null;
    }

    $scope.showSettings = false;
  };
}]);
