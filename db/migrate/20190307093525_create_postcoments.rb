class CreatePostcoments < ActiveRecord::Migration[5.2]
  def change
    create_table :postcoments,  :options => 'ENGINE=InnoDB ROW_FORMAT=DYNAMIC' do |t|
      t.text :content
      t.integer :user_id
      t.integer :post_id
      t.timestamps
    end
  end
end
