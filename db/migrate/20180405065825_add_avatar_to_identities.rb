class AddAvatarToIdentities < ActiveRecord::Migration[5.1]
  def up
    add_attachment :identities, :avatar
  end
 
  def down
    remove_attachment :identities, :avatar
  end
end
