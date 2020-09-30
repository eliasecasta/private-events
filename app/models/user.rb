class User < ApplicationRecord
  # One-To-Many, User (creator) Has Many Events
  has_many :events

  # Many-To-Many, User Has Many Events
  has_many :event_attendances
  has_many :attended_event, through: :event_attendances, source: 'event'
end
