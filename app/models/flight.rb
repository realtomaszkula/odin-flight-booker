class Flight < ActiveRecord::Base
  belongs_to :from_airport, :class_name => 'Airport', :inverse_of => :departing_flights
  belongs_to :to_airport, :class_name => 'Airport', :inverse_of => :arriving_flights
end
