class CreateMetaData < ActiveRecord::Migration[5.1]
  def change
    create_table :meta_data do |t|
      t.string :dataset_name
      t.string :dataset_owner
      t.string :dataset_owner_contact
      t.string :dataset_url
      t.datetime :dataset_date_imported
      t.boolean :dataset_update_continously
      t.datetime :dataset_last_update

      t.timestamps
    end
  end
end
