class Postcoment < ApplicationRecord
    belongs_to :posts
    belongs_to :users
end
