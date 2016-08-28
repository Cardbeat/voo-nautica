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

ActiveRecord::Schema.define(version: 20160828000932) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "addresses", force: :cascade do |t|
    t.string   "street"
    t.string   "district"
    t.string   "city"
    t.string   "cep"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "availabilities", force: :cascade do |t|
    t.date     "date1"
    t.date     "date2"
    t.date     "date3"
    t.date     "date4"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "courses", force: :cascade do |t|
    t.string   "name"
    t.decimal  "value",      precision: 8, scale: 2
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
  end

  create_table "phones", force: :cascade do |t|
    t.string   "number"
    t.string   "type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "referrers", force: :cascade do |t|
    t.integer  "type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "name"
  end

  create_table "students", force: :cascade do |t|
    t.string   "name"
    t.date     "date_birth"
    t.string   "rg"
    t.string   "cpf"
    t.date     "date_emission"
    t.string   "organ_emitter"
    t.string   "nationality"
    t.string   "civil_status"
    t.string   "father_name"
    t.string   "mother_name"
    t.string   "email"
    t.string   "profession"
    t.string   "scholarity"
    t.boolean  "vessel"
    t.boolean  "vessel_experience"
    t.integer  "payment_type"
    t.binary   "document_photo"
    t.binary   "proof_of_address"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.string   "cnh"
  end

end
