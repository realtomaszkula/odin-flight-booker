class BookingsController < ApplicationController

  def new
    @flight = Flight.find_by(id: params[:booking][:flight_id])
  end

  def create
  end

end
