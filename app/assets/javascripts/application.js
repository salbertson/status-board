//= require angular
//= require angularjs/rails/resource
//= require_self
//= require_tree .

App = angular.module('StatusBoard', ['rails']);

App.config(['$httpProvider', function($httpProvider) {
  var csrfToken = document.getElementsByName('csrf-token')[0];
  if(csrfToken) {
    $httpProvider.defaults.headers.common['X-CSRF-Token'] = csrfToken.content;
  }

  // $httpProvider.defaults.headers.common['Accept'] = 'application/json';
}]);
