class Post < ApplicationRecord
    has_many :postcoments,dependent: :destroy
    has_many :favorites,dependent: :destroy
    has_many :liking_users, through: :likes, source: :user
    belongs_to :user
    belongs_to :game
    mount_uploader :video, VideoUploader
    # mount_uploader :image, ImageUploader
    # validates :post_text, :presence => true
end
