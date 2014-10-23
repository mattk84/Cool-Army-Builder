# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20141023054133) do

  create_table "armies", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "army_units", force: true do |t|
    t.integer  "unit_id"
    t.integer  "army_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "army_units", ["army_id"], name: "index_army_units_on_army_id"
  add_index "army_units", ["unit_id"], name: "index_army_units_on_unit_id"

  create_table "factions", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "factions", ["name"], name: "index_factions_on_name", unique: true

  create_table "unit_types", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "unit_types", ["name"], name: "index_unit_types_on_name", unique: true

  create_table "units", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "base_cost"
    t.integer  "unit_type_id"
    t.integer  "faction_id"
    t.integer  "model_count"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
