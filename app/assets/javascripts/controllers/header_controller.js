App.controller('HeaderController', ['$scope', 'User', function($scope, User) {
  $scope.editingEmailAddress = false;

  $scope.initialize = function(options) {
    $scope.user = new User(options.user);
  };

  $scope.editEmailAddress = function() {
    $scope.editingEmailAddress = true;
  };

  $scope.updateUser = function() {
    $scope.editingEmailAddress = false;
    $scope.user.$patch('/user');
  };
}]);
