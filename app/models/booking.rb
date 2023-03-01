class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :companion

  enum status: [ :pending, :accepted, :declined ]
end
