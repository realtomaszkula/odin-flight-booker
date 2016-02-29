class CreateFlights < ActiveRecord::Migration
  def change
    create_table :flights do |t|
      t.integer :start_id, index: true
      t.integer :finish_id, index: true
      t.datetime :departure_date
      t.integer :flight_duration

      t.timestamps null: false
    end
  end
end
