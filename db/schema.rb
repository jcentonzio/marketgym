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

ActiveRecord::Schema.define(version: 20150319163711) do

  create_table "accesses", force: true do |t|
    t.string   "name"
    t.integer  "price"
    t.integer  "type_access_id"
    t.integer  "directory_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "offer_price"
    t.date     "star_date"
    t.date     "end_date"
    t.boolean  "state"
  end

  add_index "accesses", ["directory_id"], name: "index_accesses_on_directory_id", using: :btree
  add_index "accesses", ["type_access_id"], name: "index_accesses_on_type_access_id", using: :btree

  create_table "billings", force: true do |t|
    t.string   "name_company"
    t.string   "rut"
    t.string   "gyre"
    t.string   "address"
    t.string   "phone"
    t.integer  "city_id"
    t.integer  "customer_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cities", force: true do |t|
    t.string   "name"
    t.integer  "zone_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "cities", ["zone_id"], name: "index_cities_on_zone_id", using: :btree

  create_table "customers", force: true do |t|
    t.string   "name"
    t.string   "last_name"
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "customers", ["email"], name: "index_customers_on_email", unique: true, using: :btree
  add_index "customers", ["reset_password_token"], name: "index_customers_on_reset_password_token", unique: true, using: :btree

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
    t.integer  "customer_id"
    t.float    "latitude",    limit: 24
    t.float    "longitude",   limit: 24
  end

  add_index "directories", ["customer_id"], name: "index_directories_on_customer_id", using: :btree
  add_index "directories", ["user_id"], name: "index_directories_on_user_id", using: :btree

  create_table "directories_sitems", id: false, force: true do |t|
    t.integer "sitem_id",     null: false
    t.integer "directory_id", null: false
  end

  create_table "media", force: true do |t|
    t.string   "file_name"
    t.integer  "directory_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "orders", force: true do |t|
    t.integer  "amount"
    t.integer  "access_id"
    t.integer  "type_state_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "periods", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "periods_schedules", id: false, force: true do |t|
    t.integer "period_id",   null: false
    t.integer "schedule_id", null: false
  end

  create_table "schedules", force: true do |t|
    t.time     "star_time"
    t.time     "term_time"
    t.integer  "directory_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "schedules", ["directory_id"], name: "index_schedules_on_directory_id", using: :btree

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

  create_table "type_states", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
    t.string   "last_name"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "zones", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
