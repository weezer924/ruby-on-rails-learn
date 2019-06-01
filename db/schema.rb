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

ActiveRecord::Schema.define(version: 20190601053734) do

  create_table "diaries", force: :cascade do |t|
    t.string   "title",      limit: 255
    t.text     "body",       limit: 65535
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "members", force: :cascade do |t|
    t.integer  "number",        limit: 4,                   null: false
    t.string   "name",          limit: 255,                 null: false
    t.string   "full_name",     limit: 255
    t.date     "birthday"
    t.integer  "gender",        limit: 4,   default: 0,     null: false
    t.boolean  "administrator",             default: false, null: false
    t.datetime "created_at",                                null: false
    t.datetime "updated_at",                                null: false
    t.string   "phone",         limit: 255
    t.string   "email",         limit: 255
  end

  create_table "users", id: false, force: :cascade do |t|
    t.integer "id",   limit: 4
    t.text    "name", limit: 65535
  end

end
