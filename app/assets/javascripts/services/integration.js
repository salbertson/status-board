App.factory('Integration', ['railsResourceFactory', function (railsResourceFactory) {
  return railsResourceFactory({
    url: '/integrations',
    name: 'integration'
  });
}]);
