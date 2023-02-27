class Booking < ApplicationRecord
  belongs_to :user, :companion
end
