class AddBiographyIdToIdentities < ActiveRecord::Migration[5.1]
  def change
    add_column :biographies, :identity_id, :integer
  end
end
