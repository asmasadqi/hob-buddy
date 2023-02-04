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

ActiveRecord::Schema[7.0].define(version: 2023_02_04_110337) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "activities", force: :cascade do |t|
    t.bigint "users_id", null: false
    t.string "title"
    t.text "description"
    t.text "useful_information"
    t.int4range "age_range"
    t.string "gender"
    t.bigint "preferences_id", null: false
    t.string "location"
    t.integer "min_persons"
    t.integer "max_persons"
    t.integer "total_price"
    t.datetime "start_date", precision: nil
    t.datetime "end_date", precision: nil
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["preferences_id"], name: "index_activities_on_preferences_id"
    t.index ["users_id"], name: "index_activities_on_users_id"
  end

  create_table "bookings", force: :cascade do |t|
    t.bigint "users_id", null: false
    t.bigint "activities_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["activities_id"], name: "index_bookings_on_activities_id"
    t.index ["users_id"], name: "index_bookings_on_users_id"
  end

  create_table "chatrooms", force: :cascade do |t|
    t.bigint "bookings_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["bookings_id"], name: "index_chatrooms_on_bookings_id"
  end

  create_table "matches", force: :cascade do |t|
    t.boolean "like"
    t.bigint "user_given_id", null: false
    t.bigint "user_received_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_given_id"], name: "index_matches_on_user_given_id"
    t.index ["user_received_id"], name: "index_matches_on_user_received_id"
  end

  create_table "messages", force: :cascade do |t|
    t.bigint "users_id", null: false
    t.bigint "chatrooms_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "message"
    t.index ["chatrooms_id"], name: "index_messages_on_chatrooms_id"
    t.index ["users_id"], name: "index_messages_on_users_id"
  end

  create_table "preferences", force: :cascade do |t|
    t.string "name"
    t.string "category"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_preferences", force: :cascade do |t|
    t.bigint "users_id", null: false
    t.bigint "preferences_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["preferences_id"], name: "index_user_preferences_on_preferences_id"
    t.index ["users_id"], name: "index_user_preferences_on_users_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "first_name"
    t.string "last_name"
    t.text "about_me"
    t.string "gender"
    t.string "location"
    t.date "date_of_birth"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "activities", "preferences", column: "preferences_id"
  add_foreign_key "activities", "users", column: "users_id"
  add_foreign_key "bookings", "activities", column: "activities_id"
  add_foreign_key "bookings", "users", column: "users_id"
  add_foreign_key "chatrooms", "bookings", column: "bookings_id"
  add_foreign_key "matches", "users", column: "user_given_id"
  add_foreign_key "matches", "users", column: "user_received_id"
  add_foreign_key "messages", "chatrooms", column: "chatrooms_id"
  add_foreign_key "messages", "users", column: "users_id"
  add_foreign_key "user_preferences", "preferences", column: "preferences_id"
  add_foreign_key "user_preferences", "users", column: "users_id"
end
