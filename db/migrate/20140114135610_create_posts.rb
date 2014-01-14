class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
    	t.string :title
    	t.text   :body
    	t.string :author
    	t.float  :rating, default: 0.0

      t.timestamps
    end
  end
end
