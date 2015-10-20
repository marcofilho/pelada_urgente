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

ActiveRecord::Schema.define(version: 20151020194849) do

  create_table "addresses", force: :cascade do |t|
    t.string   "country"
    t.string   "state"
    t.string   "city"
    t.string   "district"
    t.string   "street"
    t.string   "zip_code"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "place_id"
  end

  add_index "addresses", ["place_id"], name: "index_addresses_on_place_id"
  add_index "addresses", ["user_id"], name: "index_addresses_on_user_id"

  create_table "arenas", force: :cascade do |t|
    t.string   "name"
    t.float    "width"
    t.float    "length"
    t.string   "kind"
    t.integer  "place_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "arenas", ["place_id"], name: "index_arenas_on_place_id"

  create_table "matches", force: :cascade do |t|
    t.datetime "start"
    t.datetime "end"
    t.integer  "max_players"
    t.string   "visibility"
    t.integer  "place_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "matches", ["place_id"], name: "index_matches_on_place_id"

  create_table "participations", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "match_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "participations", ["match_id"], name: "index_participations_on_match_id"
  add_index "participations", ["user_id"], name: "index_participations_on_user_id"

  create_table "places", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "positions", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.date     "birthday"
    t.string   "photo"
    t.boolean  "active",                 default: true
    t.string   "email",                  default: "",   null: false
    t.string   "encrypted_password",     default: "",   null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,    null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
    t.string   "name"
    t.integer  "position_id"
    t.string   "role"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["position_id"], name: "index_users_on_position_id"
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
