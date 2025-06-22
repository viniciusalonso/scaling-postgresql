class CreatePostsWithIndex < ActiveRecord::Migration[7.2]
  def change
    create_table :posts_with_index do |t|
      t.string :title
      t.text :body
      t.string :slug
      t.integer :author_id, index: true
      t.timestamps
    end
  end
end
