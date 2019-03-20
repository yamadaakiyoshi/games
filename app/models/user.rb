class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         has_many :favorites,dependent: :destroy
        #  has_many :favorite_posts,through: :favorite_relation,source: :post
        #  has_many :favorites,dependent: :destroy, through: :favorites
         
        #  has_many :favorite_games,through: :favorite_relation,source: :game
        #  has_many :favorite_relation, dependent: :destroy
         has_many :posts,dependent: :destroy
         has_many :postcoments,dependent: :destroy
         mount_uploaders :images, ImageUploader
         serialize :image,JSON
         acts_as_paranoid
         
end
