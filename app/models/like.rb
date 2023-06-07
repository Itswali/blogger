class Like < ApplicationRecord
  belongs_to :author, class_name: 'User'
  belongs_to :post

  after_create :increment_likes_counter
  after_destroy :increment_likes_counter

  private

  def increment_likes_counter
    post.increment_likes_counter
  end
end
