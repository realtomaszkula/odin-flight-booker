class BookingsController < ApplicationController

  def new
    @flight = Flight.find_by(id: params[:booking][:flight_id])
    @booking = Booking.new
    @passengers = build_passengers
  end

  def create


  end


  private

  def build_passengers
    num_of_tickets = params[:booking][:num_of_tickets].to_i
    num_of_tickets.times { @booking.passengers.build }
    @booking.passengers
  end

end
