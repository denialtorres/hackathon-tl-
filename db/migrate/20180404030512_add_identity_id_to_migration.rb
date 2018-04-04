class AddIdentityIdToMigration < ActiveRecord::Migration[5.1]
  def change
    add_column :migrations, :identity_id, :integer
  end
end
