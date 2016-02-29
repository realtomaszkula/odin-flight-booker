class Airport < ActiveRecord::Base
  has_many :departing_flights, :class_name => 'Flight', :foreign_key => :start_id,
            inverse_of: :from_airport
  has_many :arriving_flights, :class_name => 'Flight', :foreign_key => :finish_id,
            inverse_of: :to_airport
end


