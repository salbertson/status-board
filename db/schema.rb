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

ActiveRecord::Schema.define(version: 20141114031340) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "delayed_jobs", force: true do |t|
    t.integer  "priority",   default: 0, null: false
    t.integer  "attempts",   default: 0, null: false
    t.text     "handler",                null: false
    t.text     "last_error"
    t.datetime "run_at"
    t.datetime "locked_at"
    t.datetime "failed_at"
    t.string   "locked_by"
    t.string   "queue"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "delayed_jobs", ["priority", "run_at"], name: "delayed_jobs_priority", using: :btree

  create_table "integrations", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id",        null: false
    t.string   "integration_id", null: false
    t.json     "settings"
  end

  create_table "outages", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "service_id"
  end

  create_table "subscriptions", force: true do |t|
    t.integer "user_id",    null: false
    t.string  "service_id", null: false
  end

  add_index "subscriptions", ["user_id", "service_id"], name: "index_subscriptions_on_user_id_and_service_id", unique: true, using: :btree

  create_table "users", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "email_address", null: false
    t.integer  "github_id",     null: false
  end

  add_index "users", ["email_address"], name: "index_users_on_email_address", unique: true, using: :btree
  add_index "users", ["github_id"], name: "index_users_on_github_id", unique: true, using: :btree

end
