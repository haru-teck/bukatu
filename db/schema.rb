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

ActiveRecord::Schema[7.0].define(version: 2024_09_08_121251) do
  create_table "attendances", charset: "utf8", force: :cascade do |t|
    t.bigint "event_id", null: false
    t.bigint "user_id", null: false
    t.text "check", null: false
    t.text "detail", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_id"], name: "index_attendances_on_event_id"
    t.index ["user_id"], name: "index_attendances_on_user_id"
  end

  create_table "calendars", charset: "utf8", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "diaries", charset: "utf8", force: :cascade do |t|
    t.string "goal", null: false
    t.date "entry_date", null: false
    t.integer "content_id", null: false
    t.text "review", null: false
    t.integer "goal_completion", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "events", charset: "utf8", force: :cascade do |t|
    t.bigint "calendar_id", null: false
    t.string "event_title", null: false
    t.string "explanation", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["calendar_id"], name: "index_events_on_calendar_id"
  end

  create_table "notifications", charset: "utf8", force: :cascade do |t|
    t.string "title", null: false
    t.text "explanation", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "responses", charset: "utf8", force: :cascade do |t|
    t.bigint "total_id", null: false
    t.bigint "user_id", null: false
    t.text "response_content", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["total_id"], name: "index_responses_on_total_id"
    t.index ["user_id"], name: "index_responses_on_user_id"
  end

  create_table "results", charset: "utf8", force: :cascade do |t|
    t.text "result_event", null: false
    t.date "entry_date", null: false
    t.text "score", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "totals", charset: "utf8", force: :cascade do |t|
    t.string "total_title", null: false
    t.text "content", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", charset: "utf8", force: :cascade do |t|
    t.string "name", null: false
    t.string "password", default: "", null: false
    t.integer "role_id", null: false
    t.string "telephone", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "attendances", "events"
  add_foreign_key "attendances", "users"
  add_foreign_key "events", "calendars"
  add_foreign_key "responses", "totals"
  add_foreign_key "responses", "users"
end
