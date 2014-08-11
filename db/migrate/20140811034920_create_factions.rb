class CreateFactions < ActiveRecord::Migration
  def change
    create_table :factions do |t|
      t.string :name

      t.timestamps
    end
    add_index :factions, :name, unique: true
  end
end
