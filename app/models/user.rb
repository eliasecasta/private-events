class User < ApplicationRecord
  # One-To-Many, User (creator) Has Many Events
  has_many :events, foreign_key: :user_id

  # Many-To-Many, User Has Many Events (attended_events)
  has_many :event_attendances
  has_many :attended_event, through: :event_attendances, source: 'event'
end
