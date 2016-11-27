var Relay = require('react-relay');
var BlogRelayRoute = {
  queries: {
    blog: () => Relay.QL`
    query {
      root
    } `,
  },
  params: {
    first: '10'
  },
  name: 'BlogHomeRoute',
}
module.exports = BlogRelayRoute;
