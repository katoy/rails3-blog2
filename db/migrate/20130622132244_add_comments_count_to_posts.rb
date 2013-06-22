class AddCommentsCountToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :comments_count, :integer, default: 0, null: false
    add_column :posts, :tags_count, :integer, default: 0, null: false
  end
end
