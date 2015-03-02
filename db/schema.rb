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

ActiveRecord::Schema.define(version: 20150302155930) do

  create_table "accesses", force: true do |t|
    t.string   "name"
    t.integer  "price"
    t.integer  "type_access_id"
    t.integer  "directory_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "accesses", ["directory_id"], name: "index_accesses_on_directory_id", using: :btree
  add_index "accesses", ["type_access_id"], name: "index_accesses_on_type_access_id", using: :btree

  create_table "cities", force: true do |t|
    t.string   "name"
    t.integer  "zone_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "cities", ["zone_id"], name: "index_cities_on_zone_id", using: :btree

  create_table "directories", force: true do |t|
    t.string   "name"
    t.string   "phone"
    t.string   "address"
    t.integer  "city_id"
    t.integer  "user_id"
    t.boolean  "state"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "terms"
    t.text     "description"
  end

  add_index "directories", ["user_id"], name: "index_directories_on_user_id", using: :btree

  create_table "directories_sitems", id: false, force: true do |t|
    t.integer "sitem_id",     null: false
    t.integer "directory_id", null: false
  end

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

  create_table "type_accesses", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "zones", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
