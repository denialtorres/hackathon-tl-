class AddUnixtimeToIdentity < ActiveRecord::Migration[5.1]
  def change
    add_column :identities, :unixtime, :string
  end
end
