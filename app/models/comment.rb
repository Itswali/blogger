class Comment < ApplicationRecord
  belongs_to :users
  belongs_to :post
  after_create :increment_post_comments_counter

  attr_accessor :user_id

  def increment_post_comments_counter
    post.increment!(:comments_counter)
  end
end
