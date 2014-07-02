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

ActiveRecord::Schema.define(version: 20140625210012) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_admin_comments", force: true do |t|
    t.string   "namespace"
    t.text     "body"
    t.string   "resource_id",   null: false
    t.string   "resource_type", null: false
    t.integer  "author_id"
    t.string   "author_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id", using: :btree
  add_index "active_admin_comments", ["namespace"], name: "index_active_admin_comments_on_namespace", using: :btree
  add_index "active_admin_comments", ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id", using: :btree

  create_table "admin_users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "admin_users", ["email"], name: "index_admin_users_on_email", unique: true, using: :btree
  add_index "admin_users", ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true, using: :btree

  create_table "all_sponsors", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
    t.string   "sponsor_logo"
    t.string   "website"
    t.string   "level"
  end

  create_table "event_spotlights", force: true do |t|
    t.text     "eventbrite_code"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "events", force: true do |t|
    t.date     "date"
    t.string   "event_name"
    t.text     "description"
    t.string   "link"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "start_time"
    t.datetime "end_time"
  end

  create_table "interested_startups", force: true do |t|
    t.string   "name"
    t.string   "contactname"
    t.string   "email"
    t.string   "logo"
    t.string   "website"
    t.text     "app_link"
    t.text     "facebook_link"
    t.text     "twitter_link"
    t.text     "advice"
    t.text     "elevator_pitch"
    t.text     "success"
    t.text     "challenge"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "cover_image"
  end

  create_table "sponsor_spotlights", force: true do |t|
    t.integer  "sponsor_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sponsors", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.string   "url"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "cover_image"
    t.string   "logo"
    t.string   "facebook_link"
    t.string   "twitter_link"
    t.string   "address"
    t.text     "affiliation"
    t.string   "phone_number"
    t.string   "email"
  end

  create_table "spotlights", force: true do |t|
    t.integer  "startup_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "startups", force: true do |t|
    t.string   "name"
    t.string   "facebook_link"
    t.text     "advice"
    t.text     "elevator_pitch"
    t.string   "logo"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "cover_image"
    t.string   "twitter_link"
    t.string   "app_link"
    t.text     "challenge"
    t.string   "website"
  end

  create_table "subscribers", force: true do |t|
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "teams", force: true do |t|
    t.string   "name"
    t.text     "role"
    t.string   "picture"
    t.string   "linkedin_link"
    t.string   "facebook_link"
    t.string   "twitter_link"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "volunteers", force: true do |t|
    t.string   "position"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
