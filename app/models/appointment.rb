class Appointment < ApplicationRecord
  belongs_to :user
  belongs_to :room
  has_many :notes
end
