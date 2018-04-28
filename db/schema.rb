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

ActiveRecord::Schema.define(version: 2018_04_28_232239) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "chasquis", force: :cascade do |t|
    t.string "email", default: "luis@chasqui.com", null: false
    t.string "name", default: "Luis Felipe Sanchez", null: false
    t.integer "phone", default: 999666333, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "locations", force: :cascade do |t|
    t.float "latitude"
    t.float "longitude"
    t.string "address"
    t.bigint "chasqui_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["chasqui_id"], name: "index_locations_on_chasqui_id"
  end

  add_foreign_key "locations", "chasquis"
end
