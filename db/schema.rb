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

ActiveRecord::Schema.define(version: 20140811051438) do

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
