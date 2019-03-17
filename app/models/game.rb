class Game < ApplicationRecord
    belongs_to :genre
    has_many :favorites,dependent: :delete_all
    has_many :posts,dependent: :delete_all
    mount_uploader :image, ImageUploader

end
