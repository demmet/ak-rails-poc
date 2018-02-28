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

ActiveRecord::Schema.define(version: 20180228162633) do

  create_table "biometries", force: :cascade do |t|
    t.integer "person_id"
    t.integer "biometry_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["person_id"], name: "index_biometries_on_person_id"
  end

  create_table "face_biometries", force: :cascade do |t|
    t.integer "biometry_id"
    t.string "filename"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["biometry_id"], name: "index_face_biometries_on_biometry_id"
  end

  create_table "fingerprint_biometries", force: :cascade do |t|
    t.integer "biometry_id"
    t.integer "finger_index"
    t.string "filename"
    t.string "template"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["biometry_id"], name: "index_fingerprint_biometries_on_biometry_id"
  end

  create_table "people", force: :cascade do |t|
    t.string "full_name"
    t.string "mother_name"
    t.string "father_name"
    t.date "date_of_birth"
    t.string "cpf"
    t.string "address_cep"
    t.string "address_street"
    t.integer "address_number"
    t.string "address_complement"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "signature_biometries", force: :cascade do |t|
    t.integer "biometry_id"
    t.string "filename"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["biometry_id"], name: "index_signature_biometries_on_biometry_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
