class Resource < ActiveRecord::Base
  # Remember to create a migration!
  validates :title, :description, :user_id, presence: true
  belongs_to :user

end
