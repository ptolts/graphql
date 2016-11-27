namespace :graphql do
  task :update_schema_json, [:schema_path, :schema_json_filename] => :environment do |t, args|
    args.with_defaults(schema_path: 'app/graph')
    args.with_defaults(schema_json_filename: 'app/assets/javascripts/relay/data/schema.json')
    File.open(args.schema_json_filename, 'w') do |f|
      f.write(JSON.pretty_generate(BlogSchema.execute(GraphQL::Introspection::INTROSPECTION_QUERY)))
    end
  end
end
