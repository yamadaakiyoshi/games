class Game < ApplicationRecord
    belongs_to :genre
    has_many :favorites,dependent: :destroy
    has_many :posts, dependent: :destroy
    mount_uploader :image, ImageUploader

end
