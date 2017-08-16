class Teacher < ActiveRecord::Base
  # Remember to create a migration!
  has_many :users
  has_many :notes

  validates :first_name, :last_name, :username, :email, :password_digest, presence: true
  validates :email, uniqueness: true

  has_secure_password
end
