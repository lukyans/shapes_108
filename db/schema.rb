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

ActiveRecord::Schema.define(version: 2020_05_14_233709) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "launchpads", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "shape_users", force: :cascade do |t|
    t.bigint "shape_id", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "launchpad_id", null: false
    t.index ["launchpad_id"], name: "index_shape_users_on_launchpad_id"
    t.index ["shape_id"], name: "index_shape_users_on_shape_id"
    t.index ["user_id"], name: "index_shape_users_on_user_id"
  end

  create_table "shapes", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "color"
    t.boolean "default_status"
    t.string "link"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "icon"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "shape_users", "launchpads"
  add_foreign_key "shape_users", "shapes"
  add_foreign_key "shape_users", "users"
end
