class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         has_many :games,dependent: :delete_all
         has_many :favorites,dependent: :delete_all
         has_many :posts,dependent: :delete_all
         has_many :postcoments,dependent: :delete_all
         mount_uploader :image, ImageUploader

         
end
