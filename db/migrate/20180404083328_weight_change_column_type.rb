class WeightChangeColumnType < ActiveRecord::Migration[5.1]
  def change
    change_column(:identities, :weight, :string)
    add_column :identities, :eye_type, :string
  end
end
