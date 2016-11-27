ViewerType = GraphQL::ObjectType.define do
  # Hack to support root queries
  name 'Viewer'
  description 'Support unassociated root queries that fetches collections.'
  interfaces [GraphQL::Relay::Node.interface]

  connection :blogs, BlogType.connection_type do
    resolve ->(obj, args, ctx) {
      Blog.first(args[:first])
    }
    argument :first, !types.Int
  end

  # `id` exposes the UUID
  global_id_field :id
end
