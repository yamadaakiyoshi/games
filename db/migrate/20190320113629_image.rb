class Image < ActiveRecord::Migration[5.2]
  def change
    change_column :users, :images, :string
    rename_column :users, :images, :image
  end
end
