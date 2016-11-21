var Relay = require('react-relay');
var BlogRelayRoute = {
  queries: {
    blog: () => Relay.QL` query { blog(id: $id) } `,
  },
  params: {
    id: '1'
  },
  name: 'BlogHomeRoute',
}
module.exports = BlogRelayRoute;
