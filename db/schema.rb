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

ActiveRecord::Schema.define(version: 20160215201317) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "amenities", force: :cascade do |t|
    t.string   "name"
    t.string   "icon"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "builders", force: :cascade do |t|
    t.integer  "b_id"
    t.string   "b_name"
    t.integer  "b_projects_completed"
    t.string   "b_weblink"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.string   "avatar"
  end

  create_table "cities", force: :cascade do |t|
    t.integer  "c_id"
    t.string   "c_name"
    t.string   "c_description"
    t.string   "c_landmark1"
    t.string   "c_landmark2"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "flatlanelists", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "homes", force: :cascade do |t|
    t.string   "name"
    t.integer  "b_id"
    t.integer  "cat"
    t.integer  "price"
    t.string   "address1"
    t.string   "address2"
    t.integer  "c_id"
    t.integer  "state"
    t.string   "description"
    t.integer  "area"
    t.date     "project_date"
    t.string   "feat_1"
    t.string   "feat_2"
    t.string   "amen"
    t.string   "l_gmap"
    t.string   "l_prox1_name"
    t.float    "l_prox1"
    t.string   "l_prox2_name"
    t.float    "l_prox2"
    t.string   "l_prox3_name"
    t.float    "l_prox3"
    t.string   "l_prox4_name"
    t.float    "l_prox4"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.string   "image1"
    t.string   "image2"
    t.string   "image3"
    t.string   "image4"
  end

  create_table "leads", force: :cascade do |t|
    t.string   "name"
    t.string   "phone"
    t.integer  "project_id"
    t.string   "project_name"
    t.string   "f_1"
    t.string   "g_2"
    t.string   "g_3"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "prelaunches", force: :cascade do |t|
    t.string   "b_name"
    t.string   "phone"
    t.string   "city"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "widgets", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "stock"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
