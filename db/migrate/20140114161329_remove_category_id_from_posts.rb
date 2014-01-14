class RemoveCategoryIdFromPosts < ActiveRecord::Migration
  def change
  	remove_column :posts, :categories_id
  	add_reference :posts, :category
  end
end
