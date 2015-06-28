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

ActiveRecord::Schema.define(version: 20150628015119) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "audio_assets", force: :cascade do |t|
    t.string   "audio_asset_url"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "photo_id"
  end

  create_table "comics", force: :cascade do |t|
    t.string   "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "comic_url"
    t.integer  "user_id"
  end

  create_table "photo_assets", force: :cascade do |t|
    t.string   "photo_asset_url"
    t.float    "photo_asset_x_position"
    t.float    "photo_asset_y_position"
    t.float    "photo_asset_width"
    t.float    "photo_asset_height"
    t.string   "photo_asset_text"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.integer  "photo_id"
  end

  create_table "photos", force: :cascade do |t|
    t.string   "image_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "comic_id"
    t.integer  "user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "username"
    t.string   "password"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.string   "access_token"
    t.string   "email"
  end

end
