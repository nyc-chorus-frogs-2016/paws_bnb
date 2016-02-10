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

ActiveRecord::Schema.define(version: 20160210151009) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "dogs", force: :cascade do |t|
    t.string   "name"
    t.string   "breed"
    t.string   "sex"
    t.string   "is_neutered"
    t.text     "description"
    t.integer  "zip"
    t.string   "age_range"
    t.integer  "owner_id"
    t.date     "foster_start"
    t.date     "foster_end"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "foster_parent_ratings", force: :cascade do |t|
    t.integer  "rating"
    t.text     "comment"
    t.integer  "owner_id"
    t.integer  "foster_parent_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "matchings", force: :cascade do |t|
    t.date     "foster_start"
    t.date     "foster_end"
    t.integer  "dog_id"
    t.integer  "foster_parent_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "messages", force: :cascade do |t|
    t.string   "title"
    t.text     "content"
    t.integer  "owner_id"
    t.integer  "foster_parent_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "username"
    t.string   "email"
    t.string   "password_digest"
    t.text     "about_me"
    t.integer  "zip"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end
