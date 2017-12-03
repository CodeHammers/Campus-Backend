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

ActiveRecord::Schema.define(version: 20171116120853) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "attends", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "event_id"
    t.bigint "user_id"
    t.index ["event_id"], name: "index_attends_on_event_id"
    t.index ["user_id"], name: "index_attends_on_user_id"
  end

  create_table "branches", force: :cascade do |t|
    t.integer "number_of_rooms", null: false
    t.text "services"
    t.string "address", null: false
    t.string "phone", null: false
    t.string "email"
    t.string "photos"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "workspace_id"
    t.index ["workspace_id"], name: "index_branches_on_workspace_id"
  end

  create_table "events", force: :cascade do |t|
    t.string "title", null: false
    t.text "description", null: false
    t.time "time", null: false
    t.date "date", null: false
    t.string "venue_name", null: false
    t.string "location", null: false
    t.text "schedule", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "organization_id"
    t.bigint "branch_id"
    t.index ["branch_id"], name: "index_events_on_branch_id"
    t.index ["organization_id"], name: "index_events_on_organization_id"
  end

  create_table "identified_by", force: :cascade do |t|
    t.string "title"
    t.bigint "organization_id"
    t.bigint "workshop_id"
    t.bigint "event_id"
    t.index ["event_id"], name: "index_identified_by_on_event_id"
    t.index ["organization_id"], name: "index_identified_by_on_organization_id"
    t.index ["workshop_id"], name: "index_identified_by_on_workshop_id"
  end

  create_table "organizations", force: :cascade do |t|
    t.string "name", null: false
    t.text "description"
    t.string "university", null: false
    t.string "logo"
    t.string "address", null: false
    t.string "phone", null: false
    t.string "email", null: false
    t.text "event_schedule"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "positions", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.time "start_time", null: false
    t.float "salary"
    t.bigint "branch_id"
    t.bigint "user_id"
    t.bigint "organization_id"
    t.index ["branch_id"], name: "index_positions_on_branch_id"
    t.index ["organization_id"], name: "index_positions_on_organization_id"
    t.index ["user_id"], name: "index_positions_on_user_id"
  end

  create_table "reservations", force: :cascade do |t|
    t.time "start_time", null: false
    t.float "duration", null: false
    t.boolean "payment_status", null: false
    t.integer "numer_of_attendees"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "branch_id"
    t.bigint "user_id"
    t.bigint "organization_id"
    t.index ["branch_id"], name: "index_reservations_on_branch_id"
    t.index ["organization_id"], name: "index_reservations_on_organization_id"
    t.index ["user_id"], name: "index_reservations_on_user_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.text "feedback", null: false
    t.float "rating", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.bigint "branch_id"
    t.bigint "workshop_id"
    t.bigint "organization_id"
    t.index ["branch_id"], name: "index_reviews_on_branch_id"
    t.index ["organization_id"], name: "index_reviews_on_organization_id"
    t.index ["user_id"], name: "index_reviews_on_user_id"
    t.index ["workshop_id"], name: "index_reviews_on_workshop_id"
  end

  create_table "rooms", force: :cascade do |t|
    t.float "price", null: false
    t.boolean "availability", default: true, null: false
    t.integer "capacity", null: false
    t.text "services"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "branch_id"
    t.index ["branch_id"], name: "index_rooms_on_branch_id"
  end

  create_table "subscribes", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.bigint "organization_id"
    t.index ["organization_id"], name: "index_subscribes_on_organization_id"
    t.index ["user_id"], name: "index_subscribes_on_user_id"
  end

  create_table "tags", force: :cascade do |t|
    t.string "title", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "provider", default: "email", null: false
    t.string "uid", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.string "name"
    t.string "nickname"
    t.string "image"
    t.string "email"
    t.json "tokens"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["uid", "provider"], name: "index_users_on_uid_and_provider", unique: true
  end

  create_table "workshops", force: :cascade do |t|
    t.string "title", null: false
    t.text "description"
    t.date "date", null: false
    t.time "time", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "branch_id"
    t.bigint "organization_id"
    t.index ["branch_id"], name: "index_workshops_on_branch_id"
    t.index ["organization_id"], name: "index_workshops_on_organization_id"
  end

  create_table "workspaces", force: :cascade do |t|
    t.string "name", null: false
    t.string "logo"
    t.text "about"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "attends", "events"
  add_foreign_key "attends", "users"
  add_foreign_key "branches", "workspaces"
  add_foreign_key "events", "branches"
  add_foreign_key "events", "organizations"
  add_foreign_key "identified_by", "events"
  add_foreign_key "identified_by", "organizations"
  add_foreign_key "identified_by", "workshops"
  add_foreign_key "positions", "branches"
  add_foreign_key "positions", "organizations"
  add_foreign_key "positions", "users"
  add_foreign_key "reservations", "branches"
  add_foreign_key "reservations", "organizations"
  add_foreign_key "reservations", "users"
  add_foreign_key "reviews", "branches"
  add_foreign_key "reviews", "organizations"
  add_foreign_key "reviews", "users"
  add_foreign_key "reviews", "workshops"
  add_foreign_key "rooms", "branches"
  add_foreign_key "subscribes", "organizations"
  add_foreign_key "subscribes", "users"
  add_foreign_key "workshops", "branches"
  add_foreign_key "workshops", "organizations"
end
