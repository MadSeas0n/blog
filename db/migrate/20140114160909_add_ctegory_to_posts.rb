class AddCtegoryToPosts < ActiveRecord::Migration
  def change
  	remove_column :posts, :category_id
  	add_reference :posts, :categories
  end
end
