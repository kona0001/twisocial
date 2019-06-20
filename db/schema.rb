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

ActiveRecord::Schema.define(version: 2019_06_20_063617) do

  create_table "accounts", force: :cascade do |t|
    t.string "uid"
    t.string "icon_url"
    t.integer "progress"
    t.string "like_name"
    t.string "known_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "age"
    t.string "gender"
    t.string "extra"
    t.string "token"
    t.string "secret"
  end

  create_table "answer2s", force: :cascade do |t|
    t.string "uid"
    t.integer "type"
    t.string "ans1"
    t.string "ans2"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "answers", force: :cascade do |t|
    t.string "uid"
    t.integer "situation"
    t.string "ans1"
    t.string "ans2"
    t.string "ans3"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "replies", force: :cascade do |t|
    t.string "name"
    t.string "screenname"
    t.string "icon_url"
    t.string "text"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "situations", force: :cascade do |t|
    t.integer "num"
    t.string "text"
    t.integer "like"
    t.integer "fav"
    t.integer "mode"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "image_url"
  end

  create_table "spamusers", force: :cascade do |t|
    t.integer "num"
    t.string "name"
    t.string "screenname"
    t.string "icon_url"
    t.integer "follow"
    t.integer "follower"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "provider"
    t.string "uid"
    t.string "user_name"
    t.string "image_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
