class Comment < ActiveRecord::Base
  belongs_to :commentable, polymorphic: true
  has_many :votes
  belongs_to :commenter, :class_name => 'User'

  validates :text, presence: true
end
