
Airport.create( code: 'NYC')
Airport.create( code: 'ATL')
Airport.create( code: 'LAX')
Airport.create( code: 'PEK')
Airport.create( code: 'FRA')


200.times do
  airports = [1,2,3,4,5]

  airport_from = airports.sample
  airport_to = airports.sample
  flight_duration = [60, 90, 120, 240, 360].sample
  date = Faker::Date.forward(30)

  Flight.create(start_id: airport_from,
                finish_id: airport_to,
                  departure_date: date,
                    flight_duration: flight_duration )
end