App.controller('ApplicationController', ['$scope', 'User', function($scope, User) {
  $scope.showProfile = false;

  $scope.initialize = function(options) {
    $scope.user = new User(options.user);
  };

  $scope.openProfile = function() {
    $scope.showProfile = true;
  };

  $scope.closeProfile = function() {
    $scope.showProfile = false;
  };

  $scope.updateUser = function() {
    $scope.user.$patch('/user');
    $scope.showProfile = false;
  };
}]);
