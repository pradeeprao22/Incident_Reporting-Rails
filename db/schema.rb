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

ActiveRecord::Schema.define(version: 2019_01_08_205813) do

  create_table "detaileds", force: :cascade do |t|
    t.string "name"
    t.string "emailornumber"
    t.string "role"
    t.string "involved"
    t.text "observer"
    t.text "dateortime"
    t.string "location"
    t.string "other"
    t.text "description"
    t.string "attachment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "school_id"
    t.string "otherfortag"
    t.index ["school_id"], name: "index_detaileds_on_school_id"
  end

  create_table "districts", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "incidents", force: :cascade do |t|
    t.string "details"
    t.string "attachment"
    t.integer "school_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["school_id"], name: "index_incidents_on_school_id"
  end

  create_table "schools", force: :cascade do |t|
    t.string "name"
    t.integer "district_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["district_id"], name: "index_schools_on_district_id"
  end

  create_table "taggings", force: :cascade do |t|
    t.integer "tag_id"
    t.integer "detailed_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["detailed_id"], name: "index_taggings_on_detailed_id"
    t.index ["tag_id"], name: "index_taggings_on_tag_id"
  end

  create_table "tags", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
