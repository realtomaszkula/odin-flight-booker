class Passenger < ActiveRecord::Base
  belongs_to :booking, inverse_of: :passangers
  belongs_to :flight, inverse_of: :passengers
end
