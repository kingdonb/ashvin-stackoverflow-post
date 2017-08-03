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

ActiveRecord::Schema.define(version: 20170803130602) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "award_test_payment_notifications", force: :cascade do |t|
    t.bigint "award_test_id"
    t.bigint "instructor_student_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["award_test_id"], name: "index_award_test_payment_notifications_on_award_test_id"
    t.index ["instructor_student_id"], name: "index_award_test_payment_notifications_on_instructor_student_id"
  end

  create_table "award_tests", force: :cascade do |t|
    t.date "test_date"
    t.time "test_time"
    t.bigint "award_id"
    t.decimal "test_fee"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["award_id"], name: "index_award_tests_on_award_id"
  end

  create_table "awards", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "instructor_student_awards", force: :cascade do |t|
    t.bigint "award_test_id"
    t.bigint "instructor_student_id"
    t.boolean "is_registered", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["award_test_id"], name: "index_instructor_student_awards_on_award_test_id"
    t.index ["instructor_student_id"], name: "index_instructor_student_awards_on_instructor_student_id"
  end

  create_table "instructor_students", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "award_test_payment_notifications", "award_tests"
  add_foreign_key "award_test_payment_notifications", "instructor_students"
  add_foreign_key "award_tests", "awards"
  add_foreign_key "instructor_student_awards", "award_tests"
  add_foreign_key "instructor_student_awards", "instructor_students"
end
