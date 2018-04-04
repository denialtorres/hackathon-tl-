class CreateBiographies < ActiveRecord::Migration[5.1]
  def change
    create_table :biographies do |t|
      t.string :biography_street
      t.string :biography_number
      t.string :biography_colony
      t.string :biography_municipality
      t.string :biography_city
      t.integer :biography_postal
      t.string :biography_state
      t.string :biography_country
      t.string :civil_status
      t.date :marriage_date
      t.string :language
      t.string :dialect
      t.string :children_biological
      t.string :children_adopted
      t.string :dependants
      t.string :education
      t.string :education_field
      t.string :religion
      t.boolean :activist
      t.boolean :journalist
      t.boolean :migrant
      t.boolean :criminal_affiliation
      t.boolean :state_affiliation
      t.string :range
      t.string :occupation
      t.string :position
      t.string :occupation_street
      t.string :occupation_number
      t.string :occupation_colony
      t.string :occupation_municipality
      t.string :occupation_city
      t.string :occupation_postal
      t.string :occupation_state
      t.string :occupation_country
      t.boolean :drugs
      t.boolean :alcohol
      t.boolean :smoker

      t.timestamps
    end
  end
end
