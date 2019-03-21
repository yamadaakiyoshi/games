class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts, :options => 'ENGINE=InnoDB ROW_FORMAT=DYNAMIC' do |t|
      t.text :post_text
      t.integer :user_id
      t.timestamps
    end
  end
end
