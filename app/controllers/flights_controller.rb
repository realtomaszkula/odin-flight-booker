class FlightsController < ApplicationController
  def index
    @airports = Airport.all.map { |airport| [ airport.code, airport.id ] }
    @num = [[1,1],[2,2],[3,3],[4,4]]
    possible_dates = Flight.where(start_id: 1).order(:departure_date).uniq.pluck(:departure_date)
    @dates = format_and_map(possible_dates)

    @search_query = search_query?
    search if search_query?
  end

  private

  def format_and_map(possible_dates)
    possible_dates.map! { |date| [date.strftime("%d/%m/%Y"), date.strftime("%d%m%Y")] }
  end

  def search_query?
    (params.keys & ['from_airport', 'to_airport', 'num_tickets', 'date']).any?
  end

  def search
    @results = Flight.where('start_id = :start AND finish_id = :finish',
                      start: params[:from_airport],
                      finish: params[:to_airport])
  end


end
