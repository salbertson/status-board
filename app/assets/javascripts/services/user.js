App.factory('User', ['railsResourceFactory', function (railsResourceFactory) {
  return railsResourceFactory({
    url: '/user',
    name: 'user'
  });
}]);
