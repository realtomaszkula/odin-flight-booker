class Booking < ActiveRecord::Base
  belongs_to :flight, inverse_of: :bookings
  has_many :passengers, inverse_of: :booking
  accepts_nested_attributes_for :passengers,
        :reject_if => proc  { |attributes| attributes['name'].blank? }

end
