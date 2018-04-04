class AddColumnsToIdentity < ActiveRecord::Migration[5.1]
  def change
    # add_column :table, :new_column, :type
     add_column :identities, :second_name, :string
     add_column :identities, :first_last_name, :string
     add_column :identities, :first_second_name, :string
     add_column :identities, :birth_date, :date
     add_column :identities, :birth_country, :string, length: 3
     add_column :identities, :birth_state, :string, length: 3
     add_column :identities, :nationatily, :string
     add_column :identities, :alias, :string
     add_column :identities, :sex, :string
     add_column :identities, :gender, :string
     add_column :identities, :sexual_orientation, :string
     add_column :identities, :sexchange_surgery, :boolean
     add_column :identities, :amputation, :boolean
     add_column :identities, :chronic_disease, :boolean
     add_column :identities, :prosthesis, :boolean
     add_column :identities, :glasses, :boolean
     add_column :identities, :contact_lens, :boolean
     add_column :identities, :diopters, :boolean
     add_column :identities, :weight, :float
     add_column :identities, :height, :float
     add_column :identities, :skin_type, :string
     add_column :identities, :eye_color, :string
     add_column :identities, :hair_type, :string
     add_column :identities, :hair_color, :string
     add_column :identities, :facial_hair, :string
     add_column :identities, :body_hair, :boolean
     add_column :identities, :tattoos, :boolean
     add_column :identities, :piercings, :boolean
     add_column :identities, :facial_moles, :boolean
     add_column :identities, :facial_birth_marks, :boolean
     add_column :identities, :facial_scars, :boolean
     add_column :identities, :hands_moles, :boolean
     add_column :identities, :hands_birth_marks, :boolean
     add_column :identities, :hands_scars, :boolean
     add_column :identities, :physical_disabilities, :boolean
     add_column :identities, :mental_disabilities, :boolean
     add_column :identities, :mental_illness, :boolean
     add_column :identities, :sight_disabilities, :boolean
     add_column :identities, :ear_disabilities, :boolean
     add_column :identities, :ethnicity, :boolean
  end
end
