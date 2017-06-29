class Comment < ActiveRecord::Base
  belongs_to :commentable, polymorphic: true
  has_many :votes
  belongs_to :commenter, :class_name => 'User'

  validates :body, presence: true
end
