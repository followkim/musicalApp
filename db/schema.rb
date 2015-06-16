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

ActiveRecord::Schema.define(version: 20150616003048) do

  create_table "albums", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "picture",    limit: 255
    t.text     "desc",       limit: 65535
    t.date     "released"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.integer  "show_id",    limit: 4
    t.string   "spotify",    limit: 255
  end

  create_table "artists", force: :cascade do |t|
    t.string   "fname",      limit: 255
    t.string   "lname",      limit: 255
    t.date     "dob"
    t.string   "link",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "artists_shows", id: false, force: :cascade do |t|
    t.integer "artist_id", limit: 4
    t.integer "show_id",   limit: 4
  end

  add_index "artists_shows", ["artist_id"], name: "index_artists_shows_on_artist_id", using: :btree
  add_index "artists_shows", ["show_id"], name: "index_artists_shows_on_show_id", using: :btree

  create_table "comments", force: :cascade do |t|
    t.string   "commenter",  limit: 255
    t.text     "body",       limit: 65535
    t.integer  "show_id",    limit: 4
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  add_index "comments", ["show_id"], name: "index_comments_on_show_id", using: :btree

  create_table "keywords", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "keywords_shows", id: false, force: :cascade do |t|
    t.integer "keyword_id", limit: 4
    t.integer "show_id",    limit: 4
  end

  add_index "keywords_shows", ["keyword_id"], name: "index_keywords_shows_on_keyword_id", using: :btree
  add_index "keywords_shows", ["show_id"], name: "index_keywords_shows_on_show_id", using: :btree

  create_table "shows", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "picture",    limit: 255
    t.text     "desc",       limit: 65535
    t.date     "opened"
    t.string   "link",       limit: 255
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "songs", force: :cascade do |t|
    t.integer  "track",      limit: 4
    t.string   "title",      limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_foreign_key "comments", "shows"
end
