class Game < ApplicationRecord
    belongs_to :users
    belongs_to :genres
    has_many :favorites,dependent: :delete_all
    has_many :posts,dependent: :delete_all
end
