class AddIdentityIdToLastSeen < ActiveRecord::Migration[5.1]
  def change
    add_column :last_seens, :identity_id, :integer
  end
end
