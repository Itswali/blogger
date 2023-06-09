class Post < ApplicationRecord
  belongs_to :author, class_name: 'User'
  has_many :comments
  has_many :likes

  after_create :increment_posts_counter

  def increment_posts_counter
    author.increment!(:posts_counter)
  end

  def update_comments_counter
    update(comments_counter: comments.count)
  end

  def update_likes_counter
    update(likes_counter: likes.count)
  end

  def recent_comments
    comments.order(created_at: :desc).limit(5)
  end
end
