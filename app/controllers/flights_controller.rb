class FlightsController < ApplicationController
  def index
    @airports = Airport.all.map { |airport| [ airport.code, airport.id ] }
    @num = [[1,1],[2,2],[3,3],[4,4]]
    possible_dates = Flight.where(start_id: 1).order(:departure_date).uniq.pluck(:departure_date)
    @dates = format_and_map(possible_dates)


  end

  def format_and_map(possible_dates)
    possible_dates.map! { |date| [date.strftime("%d/%m/%Y"), date.strftime("%d/%m/%Y")] }
  end



end
