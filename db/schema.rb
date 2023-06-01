# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2023_05_31_201806) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "coupes", force: :cascade do |t|
    t.integer "doors", limit: 2, default: 2
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "mini_vans", force: :cascade do |t|
    t.integer "doors", limit: 2, default: 4
    t.integer "sliding_doors", default: 0
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "motorcycles", force: :cascade do |t|
    t.string "seat_status"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "sedans", force: :cascade do |t|
    t.integer "doors", limit: 2, default: 4
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "vehicles", force: :cascade do |t|
    t.string "nickname"
    t.string "registration", limit: 30
    t.integer "mileage"
    t.string "engine_status", default: "works"
    t.string "vehicleable_type", null: false
    t.bigint "vehicleable_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["registration"], name: "index_vehicles_on_registration"
    t.index ["vehicleable_type", "vehicleable_id"], name: "index_vehicles_on_vehicleable"
  end

end
