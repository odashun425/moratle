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

ActiveRecord::Schema.define(version: 20161210052216) do

  create_table "campus", force: :cascade do |t|
    t.string   "classname",   limit: 255
    t.text     "classdetail", limit: 65535
    t.string   "teacher",     limit: 255
    t.string   "university",  limit: 255
    t.string   "department",  limit: 255
    t.string   "course",      limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "prefectures", limit: 255
    t.integer  "user_id",     limit: 4
  end

  create_table "reviews", force: :cascade do |t|
    t.string   "nickname",      limit: 255
    t.integer  "rate",          limit: 4
    t.text     "review",        limit: 65535
    t.integer  "attendance",    limit: 4
    t.integer  "textbook",      limit: 4
    t.integer  "test",          limit: 4
    t.integer  "test_times",    limit: 4
    t.integer  "test_bringing", limit: 4
    t.integer  "report",        limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id",       limit: 4
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255,   default: "", null: false
    t.string   "encrypted_password",     limit: 255,   default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,     default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.string   "confirmation_token",     limit: 255
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email",      limit: 255
    t.datetime "created_at",                                        null: false
    t.datetime "updated_at",                                        null: false
    t.date     "birth"
    t.string   "nickname",               limit: 255
    t.text     "university",             limit: 65535
    t.text     "sibougyokai",            limit: 65535
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
