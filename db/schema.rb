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

ActiveRecord::Schema.define(version: 2018_10_30_000512) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "parties", force: :cascade do |t|
    t.string "title"
    t.datetime "date"
    t.string "description"
    t.string "street_address"
    t.string "city"
    t.string "state"
    t.integer "zip_code"
    t.bigint "host_id"
    t.float "latitude"
    t.float "longitude"
    t.index ["host_id"], name: "index_parties_on_host_id"
  end

  create_table "user_parties", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "party_id"
    t.index ["party_id"], name: "index_user_parties_on_party_id"
    t.index ["user_id"], name: "index_user_parties_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "username"
    t.string "email"
    t.string "phone_number"
    t.integer "zip_code"
    t.string "password_digest"
    t.integer "role", default: 0
  end

  add_foreign_key "parties", "users", column: "host_id"
  add_foreign_key "user_parties", "parties"
  add_foreign_key "user_parties", "users"
end
