class Post < ApplicationRecord
    has_many :postcoments,dependent: :delete_all
    has_many :favorites,dependent: :delete_all
    belongs_to :user
    mount_uploader :video, VideoUploader
    mount_uploader :image, ImageUploader
    validates :post_text, :presence => true
end
