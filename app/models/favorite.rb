class Favorite < ApplicationRecord
    belongs_to :user
    belongs_to :post,counter_cache: :likes_count, optional: true
    belongs_to :game,counter_cache: :likes_count, optional: true 
    #optional: trueは無くてもいい
    #counter_cacheはググれば出てくる
end
