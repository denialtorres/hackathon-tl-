class AddIdentityIdToPerpetrator < ActiveRecord::Migration[5.1]
  def change
    add_column :perpetrators, :identity_id, :integer
  end
end
