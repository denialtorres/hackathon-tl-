class ChangeGeneticsDnaSubjectTypeToBoolean < ActiveRecord::Migration[5.1]
  def change
    change_column :genetics, :DNA_subject, :boolean
  end
end
