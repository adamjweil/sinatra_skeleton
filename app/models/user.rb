class User < ActiveRecord::Base
  # Remember to create a migration!

  validates :username, :email, :password_digest, presence: true
  validates :email, uniqueness: true

  has_secure_password

  has_many :resources

  def self.authenticate(email, password)
      user = User.find_by(email: email)
      if user && user.password == password
        user
      else
        nil
      end
  end
end
