# app/graph/blog_schema.rb
BlogSchema = GraphQL::Schema.define do
  query QueryType

  resolve_type ->(object, ctx) {
    byebug
  }

  id_from_object ->(object, type, ctx) do
    GraphQL::Schema::UniqueWithinType.encode(type.name, object.id)
  end
end
