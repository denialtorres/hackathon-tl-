class AddIdentityIdToEvent < ActiveRecord::Migration[5.1]
  def change
    add_column :events, :identity_id, :integer
  end
end
