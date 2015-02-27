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

ActiveRecord::Schema.define(version: 20150227222952) do

  create_table "cities", force: true do |t|
    t.string   "name"
    t.integer  "country_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "cities", ["country_id"], name: "index_cities_on_country_id", using: :btree

  create_table "continents", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "countries", force: true do |t|
    t.string   "name"
    t.integer  "continent_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "countries", ["continent_id"], name: "index_countries_on_continent_id", using: :btree

  create_table "directories", force: true do |t|
    t.string   "name"
    t.string   "phone"
    t.string   "address"
    t.integer  "city_id"
    t.integer  "commune_id"
    t.text     "descripcion"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "directories", ["user_id"], name: "index_directories_on_user_id", using: :btree

  create_table "services", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sitems", force: true do |t|
    t.string   "name"
    t.integer  "service_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
