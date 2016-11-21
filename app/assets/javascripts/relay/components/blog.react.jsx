class BlogApp extends React.Component {
  render() {
    var _name = this.props.simple.name;
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
      fragment on Blog {
        name
      }
    `,
  },
});
