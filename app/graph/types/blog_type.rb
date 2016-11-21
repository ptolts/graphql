# app/graph/types/blog_type.rb
BlogType = GraphQL::ObjectType.define do
  name "Blog"
  description "A Blog"
  field :title, types.String
  field :content, types.String
  field :author do
    type AuthorType
    resolve -> (obj, args, ctx) {
      obj.author
    }
  end
  interfaces [GraphQL::Relay::Node.interface]
  global_id_field :id
end
