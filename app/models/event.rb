class Event < ApplicationRecord
  # Map `creator` to User
  belongs_to :creator, class_name: 'User', foreign_key: 'user_id'

  # Many-To-Many, Event Has Many Users (attendees)
  has_many :event_attendances
  has_many :attendee, through: :event_attendances, source: 'user'

  validates_presence_of :title, :description, on: :create, message: "can't be blank"

  scope :upcoming, -> { where('date >= ?', Time.now) }
  scope :previous, -> { where('date < ?', Time.now) }
end
