class Booking < ActiveRecord::Base
  belongs_to :flight, inverse_of: :bookings
  has_many :passengers, inverse_of: :booking
end
