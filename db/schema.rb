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

ActiveRecord::Schema.define(version: 20150421231940) do

  create_table "accounts", force: :cascade do |t|
    t.string  "name",         limit: 255
    t.string  "image_path",   limit: 255
    t.string  "description",  limit: 255
    t.boolean "is_humor",     limit: 1,   default: false
    t.string  "account_type", limit: 255
  end

  create_table "tweets", force: :cascade do |t|
    t.string  "text",           limit: 255
    t.boolean "is_humor",       limit: 1
    t.boolean "is_classified",  limit: 1
    t.integer "account_id",     limit: 4
    t.string  "id_tweet",       limit: 45
    t.integer "positive_votes", limit: 4,   default: 0
    t.integer "negative_votes", limit: 4,   default: 0
    t.integer "one_star",       limit: 4,   default: 0
    t.integer "two_star",       limit: 4,   default: 0
    t.integer "three_star",     limit: 4,   default: 0
    t.integer "four_star",      limit: 4,   default: 0
    t.integer "five_star",      limit: 4,   default: 0
  end

end
