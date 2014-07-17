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

ActiveRecord::Schema.define(version: 20140715181538) do

  create_table "appointments", force: true do |t|
    t.datetime "start_time"
    t.datetime "end_time"
    t.integer  "client_id"
    t.integer  "service_id"
    t.text     "notes"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "attendances", force: true do |t|
    t.integer  "staff_id"
    t.datetime "time_in"
    t.datetime "time_out"
    t.date     "attendance_date"
    t.boolean  "showed_up"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "campaigns", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "clients", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "phone1"
    t.string   "phone2"
    t.string   "email_id"
    t.string   "address"
    t.text     "notes"
    t.date     "birthdate"
    t.integer  "how_met_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "discounts", force: true do |t|
    t.decimal  "percent_off", precision: 10, scale: 0
    t.decimal  "flat_amount", precision: 10, scale: 0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "how_mets", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "inventories", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.string   "inventory_type"
    t.decimal  "cost",                 precision: 10, scale: 0
    t.integer  "quantity"
    t.datetime "purchased_on"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.decimal  "price",                precision: 10, scale: 0
    t.string   "code"
    t.integer  "unit"
    t.string   "distributor_name"
    t.string   "distributor_phone_no"
    t.decimal  "unit_Price",           precision: 10, scale: 0
    t.decimal  "total_price",          precision: 10, scale: 0
    t.decimal  "total_paid",           precision: 10, scale: 0
    t.decimal  "discount",             precision: 10, scale: 0
    t.string   "payment_type"
    t.decimal  "cash",                 precision: 10, scale: 0
    t.decimal  "check",                precision: 10, scale: 0
    t.decimal  "card",                 precision: 10, scale: 0
    t.decimal  "due",                  precision: 10, scale: 0
  end

  create_table "job_categories", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "jobs", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "job_category_id"
    t.decimal  "amount",          precision: 10, scale: 0
  end

  create_table "line_items", force: true do |t|
    t.integer  "job_id"
    t.integer  "order_id"
    t.decimal  "amount",     precision: 10, scale: 0
    t.integer  "quantity"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "memberships", force: true do |t|
    t.integer  "campaing_id"
    t.integer  "client_id"
    t.datetime "start_date"
    t.datetime "end_date"
    t.text     "note"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "orders", force: true do |t|
    t.integer  "client_id"
    t.decimal  "actual_amount", precision: 10, scale: 0
    t.decimal  "total_amount",  precision: 10, scale: 0
    t.decimal  "discount",      precision: 10, scale: 0
    t.integer  "created_by"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "rate_cards", force: true do |t|
    t.integer  "job_id"
    t.decimal  "service_charge", precision: 10, scale: 0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "roles", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "roles_users", force: true do |t|
    t.integer  "user_id"
    t.integer  "role_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "services", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "staffs", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.date     "date_of_birth"
    t.string   "pan_no"
    t.text     "permanent_address"
    t.text     "temporary_address"
    t.string   "phone1"
    t.string   "phone2"
    t.string   "emergency_contact_no"
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
    t.string   "first_name"
    t.string   "last_name"
    t.date     "date_of_birth"
    t.string   "pan_no"
    t.text     "permanent_address"
    t.text     "temporary_address"
    t.string   "phone1"
    t.string   "phone2"
    t.string   "emergency_contact_no"
    t.boolean  "is_admin"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
