class Event < ApplicationRecord
  # Map `creator` to User
  scope :upcoming, -> { where("date > ?", Time.now)}
  scope :previous, -> { where("date < ?", Time.now)}

  # Ex:- scope :active, -> {where(:active => true)}
  include UsersHelper
  belongs_to :creator, class_name: 'User', foreign_key: 'user_id'


  # Many-To-Many, Event Has Many Users
  has_many :event_attendances
  has_many :attendee, through: :event_attendances, source: 'user'

  # def self.previous
  #   grouped_by_date[:previous]
  # end

  # def self.upcoming
  #   grouped_by_date[:upcoming]
  # end

  def self.grouped_by_date

    current_date = Time.now
    self.all
      .reject { |event| event.date.nil? }
      .reduce({ upcoming: [], previous: [] }) do |events, event|
      if event.date >= current_date
        events[:upcoming] = events[:upcoming] << event
      else
        events[:previous] = events[:previous] << event
      end
      events
    end
  end
end
