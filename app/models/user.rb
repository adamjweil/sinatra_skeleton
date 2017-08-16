class User < ActiveRecord::Base
  # Remember to create a migration!
  validates :first_name, :last_name, :username, :email, :password_digest, presence: true
  validates :email, uniqueness: true

  has_secure_password

end
