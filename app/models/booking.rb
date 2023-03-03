class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :companion
  validates :date, presence: true

  enum status: [ :pending, :accepted, :declined ]
end
