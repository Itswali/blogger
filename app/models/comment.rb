class Comment < ApplicationRecord
  belongs_to :author, class_name: 'User'
  belongs_to :post

  after_create :update_comments_counter
  after_destroy :update_comments_counter

  private

  def increment_comments_counter
    post.update_comments_counter
  end
end
