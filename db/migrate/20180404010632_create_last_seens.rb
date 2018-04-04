class CreateLastSeens < ActiveRecord::Migration[5.1]
  def change
    create_table :last_seens do |t|
      t.date :ls_date
      t.time :ls_time
      t.string :ls_number
      t.string :ls_colony
      t.string :ls_municipality
      t.string :ls_city
      t.integer :ls_postal
      t.string :ls_state
      t.string :ls_country
      t.boolean :clothes
      t.string :clothes_top
      t.string :clothes_top_color
      t.string :clothes_bottom
      t.string :clothes_bottom_color

      t.timestamps
    end
  end
end
