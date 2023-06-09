class Comment < ApplicationRecord
  belongs_to :author, class_name: 'User'
  belongs_to :post

  after_create :increment_comments_counter
  after_destroy :increment_comments_counter

  private

  def increment_comments_counter
    post.increment_comments_counter
  end
end
