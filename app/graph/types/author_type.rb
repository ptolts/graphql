# app/graph/types/author_type.rb
AuthorType = GraphQL::ObjectType.define do
  name "Author"
  description "Author of Blogs"
  field :name, types.String
  interfaces [GraphQL::Relay::Node.interface]
  global_id_field :id
end
