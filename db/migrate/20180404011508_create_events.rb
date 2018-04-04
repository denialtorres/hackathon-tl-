class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.date :event_date
      t.time :event_time
      t.string :event_street
      t.string :event_street_number
      t.string :event_colony
      t.string :event_municipality
      t.string :event_city
      t.integer :event_postal
      t.string :event_state
      t.string :event_country
      t.boolean :com_device
      t.string :device_sn
      t.string :device_IMEI
      t.boolean :vehicule
      t.string :vehicule_plate
      t.string :vehicule_color
      t.integer :vehicule_year
      t.boolean :vehicule_found
      t.string :possible_cause
      t.string :context
      t.string :act
      t.string :abductor
      t.boolean :violence
      t.boolean :abduct_atribution
      t.boolean :physical_consecuences
      t.string :place_type

      t.timestamps
    end
  end
end
