class CreateUnits < ActiveRecord::Migration
  def change
    create_table :units do |t|
      t.string :name
      t.text :description
      t.integer :base_cost
      t.integer :unit_type_id
      t.integer :faction_id
      t.integer :model_count

      t.timestamps
    end
  end
end
