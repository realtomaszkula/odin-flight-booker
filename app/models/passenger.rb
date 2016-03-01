class Passenger < ActiveRecord::Base
  belongs_to :booking, inverse_of: :passengers, foreign_key: :booking_id
  belongs_to :flight, inverse_of: :passengers
end
