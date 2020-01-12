class User < ApplicationRecord
    has_many :posts
    has_many :favorites
    has_many :fav_posts, through: :favorites, source: :post

    def like(post)
        favorites.find_or_create_by(post_id: post.id)
    end

    def unlike(post)
        favorite = favorites.find_by(post_id: post.id)
        favorite.destroy if favorite
    end
end
