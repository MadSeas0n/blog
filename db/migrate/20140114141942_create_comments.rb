class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
    	t.string :c_author
    	t.text   :c_body

      t.timestamps
    end
  end
end
