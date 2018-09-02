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

ActiveRecord::Schema.define(version: 20180902135313) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "dispensaries", force: :cascade do |t|
    t.string "name"
    t.string "full_address"
    t.string "email"
    t.string "phone_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "dispensary_strains", force: :cascade do |t|
    t.bigint "dispensary_id"
    t.bigint "strain_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["dispensary_id"], name: "index_dispensary_strains_on_dispensary_id"
    t.index ["strain_id"], name: "index_dispensary_strains_on_strain_id"
  end

  create_table "strains", force: :cascade do |t|
    t.string "strain"
    t.string "cannabinoid_abbreviation"
    t.string "cannabinoid"
    t.string "terpene"
    t.string "medical_use"
    t.string "health_benefit"
    t.string "category"
    t.string "strain_type"
    t.string "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "full_address"
    t.integer "med_card_number"
    t.integer "plant_count"
    t.string "user_name"
    t.string "password_digest"
    t.integer "role", default: 0
    t.bigint "dispensary_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["dispensary_id"], name: "index_users_on_dispensary_id"
  end

  add_foreign_key "dispensary_strains", "dispensaries"
  add_foreign_key "dispensary_strains", "strains"
  add_foreign_key "users", "dispensaries"
end
