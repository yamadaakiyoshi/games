class Game < ApplicationRecord
    belongs_to :genre
    has_many :favorites,dependent: :destroy
    has_many :posts, dependent: :destroy
    mount_uploader :image, ImageUploader

def self.search(search)
     if search
      game1 = Game.where("title LIKE ? ", "%#{search}%")
      result = game1
  	else
  	  result = Game.all
  end
end
end
