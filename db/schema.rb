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

ActiveRecord::Schema.define(version: 20160219210640) do

  create_table "books", force: :cascade do |t|
    t.integer  "user_id",     limit: 4
    t.string   "title",       limit: 32,    null: false
    t.string   "author",      limit: 64
    t.integer  "public",      limit: 4
    t.text     "description", limit: 65535
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pages", force: :cascade do |t|
    t.integer  "book_id",            limit: 4,     null: false
    t.integer  "sequence",           limit: 4
    t.text     "content",            limit: 65535
    t.string   "image_location",     limit: 255
    t.string   "narration_location", limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: :cascade do |t|
    t.string   "first_name",    limit: 255
    t.string   "last_name",     limit: 255
    t.string   "email_address", limit: 255
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

end
