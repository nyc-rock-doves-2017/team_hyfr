class User < ActiveRecord::Base
  has_many :questions
  has_many :comments
  has_many :votes
  has_many :answers

  validates :name, :email, :password, presence: true
end
