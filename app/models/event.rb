class Event < ApplicationRecord
  belongs_to :event_type
  has_many :attendees
  has_many :friends, through: :attendees
end
