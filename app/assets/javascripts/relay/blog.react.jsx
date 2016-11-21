var React = require('react');
var Relay = require('react-relay');
var ReactDOM = require('react-dom');
var BlogRelayContainer = require('./components/blog');
var BlogRelayRoute = require('./routes/blog-route');

Relay.injectNetworkLayer(
  new Relay.DefaultNetworkLayer('/queries')
);

var BlogRelayStart = function() {
  ReactDOM.render(
    <Relay.RootContainer
      Component={BlogRelayContainer}
      route={BlogRelayRoute}
    />,
    document.getElementById('blog-id')
  );
};
module.exports = BlogRelayStart;
