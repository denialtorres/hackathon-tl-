class CreatePerpetrators < ActiveRecord::Migration[5.1]
  def change
    create_table :perpetrators do |t|
      t.boolean :attribution
      t.boolean :legal_attribution
      t.boolean :legal_figure
      t.boolean :legal_order
      t.string :criminal_attribution
      t.string :criminal_figure

      t.timestamps
    end
  end
end
