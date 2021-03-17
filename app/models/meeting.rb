class Meeting < ApplicationRecord
  has_many :meeting_speakers
  has_many :speakers, through: :meeting_speakers

  validate :title, presence: true
  validate :agenda, presence: true
  validate :location, presence: true
  validate :time, time: time.now #need to sort out if this is correct
  # message: "Please fill out all fields "
end
