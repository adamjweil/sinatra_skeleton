class Teacher < ActiveRecord::Base
  # Remember to create a migration!
  has_many :notes

  validates :first_name, :last_name, :school, :email, presence: true

end
