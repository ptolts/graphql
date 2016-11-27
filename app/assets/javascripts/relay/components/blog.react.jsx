var React = require('react');
var Relay = require('react-relay');

class BlogApp extends React.Component {
  render() {
    var _name = this.props.blog.title;
    return (
      <div>
        Bloging... {_name}
      </div>
    );
  }
}
var BlogRelayContainer = Relay.createContainer(BlogApp, {
  fragments: {
    blog: () => Relay.QL`
      fragment on Viewer {
        blogs(first: 10) {
          edges {
            node {
              title
              author {
                name
              }
            }
          }
        }
      }
    `,
  },
});
module.exports = BlogRelayContainer;
