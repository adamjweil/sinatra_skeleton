class Note  < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to :user
  belongs_to :teacher

  validates :user_id, :teacher_id, :note, presence: true
end
