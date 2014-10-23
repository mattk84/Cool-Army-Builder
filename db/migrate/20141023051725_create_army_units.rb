class CreateArmyUnits < ActiveRecord::Migration
  def change
    create_table :army_units do |t|
      t.references :unit, index: true
      t.references :army, index: true

      t.timestamps
    end
  end
end
