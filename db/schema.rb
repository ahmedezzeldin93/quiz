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

ActiveRecord::Schema.define(version: 20150208160756) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "answers", force: :cascade do |t|
    t.integer  "question_id"
    t.string   "title"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "groups", force: :cascade do |t|
    t.integer  "instructor_id"
    t.string   "group_name"
    t.string   "description"
    t.integer  "number_of_students"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "memberships", force: :cascade do |t|
    t.integer  "student_id"
    t.integer  "group_id"
    t.boolean  "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "questions", force: :cascade do |t|
    t.string   "title"
    t.integer  "right_answer_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "quizzes", force: :cascade do |t|
    t.integer  "instructor_id"
    t.integer  "group_id"
    t.string   "title"
    t.string   "subject"
    t.string   "description"
    t.integer  "mark"
    t.date     "date_to_publish"
    t.time     "time_to_publish"
    t.boolean  "status"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "students_answers", force: :cascade do |t|
    t.integer "student_id"
    t.integer "answer_id"
  end

  add_index "students_answers", ["student_id", "answer_id"], name: "index_students_answers_on_student_id_and_answer_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "username",                            null: false
    t.string   "type",                                null: false
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "auth_token"
  end

  add_index "users", ["auth_token"], name: "index_users_on_auth_token", unique: true, using: :btree
  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
