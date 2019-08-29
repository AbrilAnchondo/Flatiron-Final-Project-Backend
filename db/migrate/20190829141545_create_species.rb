class CreateSpecies < ActiveRecord::Migration[5.2]
  def change
    create_table :species do |t|
      t.string :common_name
      t.string :scientific_name
      t.string :habitat
      t.string :population
      t.string :threat_type
      t.string :use_trade
      t.string :conservation_measure
      t.string :image

      t.timestamps
    end
  end
end
