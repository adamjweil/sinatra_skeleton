class Note  < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to :user
  belongs_to :teacher

  validates :title, :class, :content, presence: true
end
