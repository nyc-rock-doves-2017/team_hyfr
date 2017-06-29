class Vote < ActiveRecord::Base
  belongs_to :voteable, polymorphic: true
  belongs_to :voter, :class_name => 'User'

  validates :user_id, presence: true
  validates :value, presence: true
end
