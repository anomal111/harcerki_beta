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

ActiveRecord::Schema.define(version: 20150113200541) do

  create_table "coordinators", force: true do |t|
    t.string   "name"
    t.string   "surname"
    t.string   "city"
    t.string   "street"
    t.string   "building"
    t.string   "apartment"
    t.string   "zip_code"
    t.string   "login"
    t.string   "password"
    t.string   "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "issues", force: true do |t|
    t.datetime "date"
    t.string   "mark"
    t.string   "title"
    t.string   "picture"
    t.integer  "volume"
    t.float    "price"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "order_positions", force: true do |t|
    t.integer  "ordinal"
    t.integer  "amount"
    t.boolean  "completed"
    t.integer  "price"
    t.integer  "order_id"
    t.integer  "issue_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "orders", force: true do |t|
    t.boolean  "paid"
    t.datetime "deadline"
    t.string   "status"
    t.datetime "created_at"
    t.integer  "coordinator_id"
    t.datetime "updated_at"
  end

end
