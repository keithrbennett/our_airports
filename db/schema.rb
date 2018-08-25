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

ActiveRecord::Schema.define(version: 2018_08_23_145431) do

  create_table "airports", force: :cascade do |t|
    t.string "oa_id"
    t.string "ident"
    t.string "airport_type"
    t.string "name"
    t.decimal "lat"
    t.decimal "long"
    t.integer "elevation_ft"
    t.string "continent"
    t.string "iso_country"
    t.string "iso_region"
    t.string "municipality"
    t.boolean "scheduled_service"
    t.string "gps_code"
    t.string "iata_code"
    t.string "local_code"
    t.string "home_link"
    t.string "wikipedia_link"
    t.string "keywords"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "countries", force: :cascade do |t|
    t.string "oa_id"
    t.string "code"
    t.string "name"
    t.string "continent"
    t.string "wikipedia_link"
    t.string "keywords"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "regions", force: :cascade do |t|
    t.string "oa_id"
    t.string "code"
    t.string "local_code"
    t.string "name"
    t.string "continent"
    t.string "iso_country"
    t.string "wikipedia_link"
    t.string "keywords"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
