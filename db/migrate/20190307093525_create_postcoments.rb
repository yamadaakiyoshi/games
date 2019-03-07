class CreatePostcoments < ActiveRecord::Migration[5.2]
  def change
    create_table :postcoments do |t|
      t.text :content
      t.integer :user_id
      t.integer :post_id
      t.timestamps
    end
  end
end
