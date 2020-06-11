# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_06_03_132414) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "floors", force: :cascade do |t|
    t.string "title", null: false
    t.integer "level", null: false
    t.string "area", null: false
    t.string "rooms_structure", null: false
    t.integer "summary", null: false
    t.string "small_image"
    t.string "large_image"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "furnitures", force: :cascade do |t|
    t.string "title", null: false
    t.integer "price", null: false
    t.integer "quantity", null: false
    t.integer "price_per_unit", null: false
    t.integer "summary", null: false
    t.bigint "room_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["room_id"], name: "index_furnitures_on_room_id"
  end

  create_table "maps", force: :cascade do |t|
    t.string "name", null: false
    t.string "areas"
    t.bigint "floor_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["floor_id"], name: "index_maps_on_floor_id"
  end

  create_table "materials", force: :cascade do |t|
    t.string "title", null: false
    t.string "type", null: false
    t.integer "quantity", null: false
    t.integer "price_per_unit", null: false
    t.integer "summary"
    t.bigint "room_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["room_id"], name: "index_materials_on_room_id"
  end

  create_table "rooms", force: :cascade do |t|
    t.text "name", null: false
    t.float "area", null: false
    t.string "image", null: false
    t.bigint "floor_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["floor_id"], name: "index_rooms_on_floor_id"
  end

  create_table "tasks", force: :cascade do |t|
    t.string "title", null: false
    t.integer "position"
    t.integer "price", null: false
    t.string "work_time"
    t.date "deadline"
    t.bigint "room_id", null: false
    t.boolean "completed", default: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["room_id"], name: "index_tasks_on_room_id"
  end

  add_foreign_key "furnitures", "rooms"
  add_foreign_key "maps", "floors"
  add_foreign_key "materials", "rooms"
  add_foreign_key "rooms", "floors"
  add_foreign_key "tasks", "rooms"
end
