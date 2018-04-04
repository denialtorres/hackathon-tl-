class CreateReports < ActiveRecord::Migration[5.1]
  def change
    create_table :reports do |t|
      t.date :report_date
      t.boolean :report_institution
      t.string :report_media_url
      t.string :report_media_reach
      t.string :report_institution_name
      t.string :report_institution_street
      t.string :report_institution_number
      t.string :report_institution_colony
      t.string :report_institution_municipality
      t.string :report_institution_state
      t.string :report_institution_country
      t.string :report_institution_answer

      t.timestamps
    end
  end
end
