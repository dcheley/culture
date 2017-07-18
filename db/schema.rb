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

ActiveRecord::Schema.define(version: 20170718191953) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "activities", force: :cascade do |t|
    t.string "name"
    t.text "admin_description"
    t.string "task_one"
    t.string "task_two"
    t.string "task_three"
    t.string "task_four"
    t.string "task_five"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.decimal "prize", precision: 6, scale: 2
    t.integer "user_id"
    t.integer "content_id"
    t.string "new_hire_description"
  end

  create_table "contents", force: :cascade do |t|
    t.string "name"
    t.string "task_one"
    t.string "task_two"
    t.string "task_three"
    t.string "task_four"
    t.string "task_five"
    t.decimal "prize", precision: 6, scale: 2
    t.text "admin_description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "new_hire_description"
  end

  create_table "feedbacks", force: :cascade do |t|
    t.string "first_takeaway"
    t.string "second_takeaway"
    t.string "third_takeaway"
    t.string "fourth_takeaway"
    t.string "fifth_takeaway"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rewards", force: :cascade do |t|
    t.integer "progress"
    t.string "name"
    t.decimal "award", precision: 6, scale: 2
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "trackers", force: :cascade do |t|
    t.integer "activity_id"
    t.string "user_email"
    t.string "contact_one"
    t.integer "status"
    t.integer "feedback_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "due_date"
    t.string "question_one"
    t.string "question_two"
    t.string "question_three"
    t.string "question_four"
    t.string "question_five"
    t.string "contact_two"
    t.string "contact_three"
    t.string "contact_four"
    t.string "contact_five"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "admin"
    t.string "new_hire_email"
    t.integer "admin_id"
    t.string "name"
    t.string "organization"
    t.string "title"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
