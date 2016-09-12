class Attendee < ApplicationRecord
  belongs_to :friend
  belongs_to :event
end
