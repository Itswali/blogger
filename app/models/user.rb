class User < ApplicationRecord
  has_many :comments
  has_many :likes
  has_many :posts, foreign_key: :author_id

  validates :name, presence: { message: 'El nombre del usuario no puede estar en blanco' }
  validates :posts_counter,
            numericality: { only_integer: true, greater_than_or_equal_to: 0,
                            message: 'PostsCounter must be an integer greater than or equal to zero.' }

  def recent_posts
    posts.order(created_at: :desc).limit(3)
  end
end
