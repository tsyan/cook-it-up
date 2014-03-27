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

ActiveRecord::Schema.define(version: 20140327205050) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "practices", force: true do |t|
    t.integer "skill_id"
    t.integer "recipe_id"
  end

  add_index "practices", ["recipe_id"], name: "index_practices_on_recipe_id", using: :btree
  add_index "practices", ["skill_id"], name: "index_practices_on_skill_id", using: :btree

  create_table "recipes", force: true do |t|
    t.text     "name"
    t.text     "url"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
  end

  create_table "skills", force: true do |t|
    t.text     "name"
    t.text     "url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
