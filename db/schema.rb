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

<<<<<<< HEAD
ActiveRecord::Schema.define(version: 20160129162021) do
=======
ActiveRecord::Schema.define(version: 20160129150616) do
>>>>>>> a30bdf0a69847f0fa6036e4ff03a1927b1a83b3f

  create_table "interests", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
  end

<<<<<<< HEAD
  create_table "messages", force: :cascade do |t|
    t.string   "message"
    t.integer  "from"
    t.integer  "to"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

=======
>>>>>>> a30bdf0a69847f0fa6036e4ff03a1927b1a83b3f
  create_table "punches", force: :cascade do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
    t.integer  "user_punched"
    t.integer  "punched_back"
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.integer  "birthday"
    t.integer  "birthmonth"
    t.integer  "birthyear"
    t.string   "email"
    t.string   "password_digest"
    t.boolean  "online"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end
