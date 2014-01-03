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

ActiveRecord::Schema.define(version: 20140102130210) do

  create_table "debit_items", force: true do |t|
    t.string   "shop"
    t.string   "description"
    t.float    "value"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "debits", force: true do |t|
    t.string   "description"
    t.integer  "debit_item_id"
    t.integer  "user_id"
    t.float    "total_value"
    t.integer  "type_payment_id"
    t.date     "payment_date"
    t.date     "expiration_date"
    t.float    "partition_value"
    t.integer  "partition_number"
    t.integer  "total_partition_number"
    t.integer  "type_debit_id"
    t.float    "invoice"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "debits", ["debit_item_id"], name: "index_debits_on_debit_item_id"
  add_index "debits", ["type_debit_id"], name: "index_debits_on_type_debit_id"
  add_index "debits", ["type_payment_id"], name: "index_debits_on_type_payment_id"
  add_index "debits", ["user_id"], name: "index_debits_on_user_id"

  create_table "type_debits", force: true do |t|
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "type_payments", force: true do |t|
    t.string   "description"
    t.string   "brand"
    t.string   "account"
    t.string   "agency"
    t.integer  "account_owner"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
