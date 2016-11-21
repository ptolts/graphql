class SeedPosts < ActiveRecord::Migration
  def change
    Author.transaction do
      Author.create!(name: 'ptolts').tap do |user|
        user.blogs.create!(
          title: 'First Post!',
          content: '<h1>Hello World!</h1>'
        )
      end
    end
  end
end
