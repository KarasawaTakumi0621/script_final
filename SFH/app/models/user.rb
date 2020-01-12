class User < ApplicationRecord
    has_many :posts
    has_many :favorites
    has_many :favorite_posts, through: :favorites, source: :posts
end
