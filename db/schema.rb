# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[8.0].define(version: 2025_01_05_232233) do
  create_table "charactersheets", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "vessels", force: :cascade do |t|
    t.string "name"
    t.string "type"
    t.string "propulsion"
    t.string "maneuverablility"
    t.string "size"
    t.integer "seaworthiness"
    t.integer "shiphandling"
    t.integer "spped"
    t.integer "overall_ac"
    t.integer "hull_sections"
    t.integer "sink"
    t.integer "section_hp"
    t.integer "section_ac"
    t.integer "rigging_sections"
    t.integer "rigging_hp"
    t.string "ram"
    t.integer "mounts"
    t.string "space"
    t.string "height"
    t.integer "watch"
    t.integer "complement"
    t.integer "speed"
    t.integer "cost"
    t.integer "rowers"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end
end
