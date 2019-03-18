class AddCountToGames < ActiveRecord::Migration[5.2]
  def change
    add_column :games, :likes_count, :integer
  end
end
