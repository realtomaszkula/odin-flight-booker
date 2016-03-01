class Flight < ActiveRecord::Base
  belongs_to :from_airport, :class_name => 'Airport', inverse_of: :departing_flights
  belongs_to :to_airport, :class_name => 'Airport', inverse_of: :arriving_flights
  has_many :bookings, inverse_of: :flight
  has_many :passengers, through: :bookings, inverse_of: :flight
end
