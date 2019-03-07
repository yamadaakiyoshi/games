class Genre < ApplicationRecord
    has_many :games,dependent: :delete_all
end
