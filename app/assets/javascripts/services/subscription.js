App.factory('Subscription', ['railsResourceFactory', function (railsResourceFactory) {
  return railsResourceFactory({
    url: '/subscriptions',
    name: 'subscription'
  });
}]);
