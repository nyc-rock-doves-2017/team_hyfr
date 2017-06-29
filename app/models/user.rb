class User < ActiveRecord::Base
  has_many :questions
  has_many :comments
  has_many :votes
  has_many :answers

  validates :name, :email, :password, presence: true

  def self.authenticate(login_credentials)
    user = User.find_by(email: login_credentials[:email])
    if user
      user.password == login_credentials[:password]
    else
      false
    end
  end

  def password
    @password ||= BCrypt::Password.new(password_hash)
  end

  def password=(new_password)
    @password = BCrypt::Password.create(new_password)
    self.password_hash = @password
  end
end
