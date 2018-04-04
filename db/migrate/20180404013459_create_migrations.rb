class CreateMigrations < ActiveRecord::Migration[5.1]
  def change
    create_table :migrations do |t|
      t.string :migration_status
      t.string :migration_destination

      t.timestamps
    end
  end
end
