class CreateGames < ActiveRecord::Migration[5.2]
  def change
    create_table :games do |t|
      t.text :introduction
      t.string :title
      t.integer :genre_id
      t.datetime :daleted_at

      t.timestamps
    end
  end
end
