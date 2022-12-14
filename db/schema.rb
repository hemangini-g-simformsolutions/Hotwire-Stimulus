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

ActiveRecord::Schema[7.0].define(version: 2022_09_26_150908) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "security_questions", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "full_name"
    t.string "gender"
    t.boolean "accept_terms"
    t.text "description"
    t.date "dob"
    t.string "security_answer"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "security_question_id"
    t.index ["security_question_id"], name: "index_users_on_security_question_id"
  end

end
