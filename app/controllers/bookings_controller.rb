class BookingsController < ApplicationController

  def show
  end

  def new
    @flight = Flight.find_by(id: params[:booking][:flight_id])
    @booking = Booking.new
    @passengers = build_passengers
  end

  def create
    @booking = Booking.new
    if @booking.save
      redirect_to @booking
    else
      render :new
    end
  end


  private

  def build_passengers
    num_of_tickets = params[:booking][:num_of_tickets].to_i
    num_of_tickets.times { @booking.passengers.build }
    @booking.passengers
  end

  def bookings_params
    params.require(:booking)
          .permit(:flight_id,passengers_attributes: [:name, :email])
  end

end
