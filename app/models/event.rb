class Event < ApplicationRecord
  # Map `creator` to User
  belongs_to :creator, class_name: 'User', foreign_key: 'user_id'

  # Many-To-Many, Event Has Many Users
  has_many :event_attendances
  has_many :attendee, through: :event_attendances, source: 'user'
end
