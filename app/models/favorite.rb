class Favorite < ApplicationRecord
    belongs_to :users
    belongs_to :posts
    belongs_to :games
end
