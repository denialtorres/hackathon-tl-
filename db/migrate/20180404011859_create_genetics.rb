class CreateGenetics < ActiveRecord::Migration[5.1]
  def change
    create_table :genetics do |t|
      t.string :DNA_subject
      t.string :DNA_s_b
      t.date :DNA_s_b_date
      t.string :DNA_s_b_ref
      t.boolean :DNA_s_b_code
      t.boolean :DNA_s_b_inst
      t.boolean :DNA_s_s
      t.boolean :DNA_s_s_date
      t.boolean :DNA_s_s_ref
      t.boolean :DNA_s_s_code
      t.boolean :DNA_family
      t.boolean :DNA_f_b
      t.boolean :DNA_f_number_b

      t.timestamps
    end
  end
end
