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

ActiveRecord::Schema.define(version: 20190314001244) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "campgrounds", force: :cascade do |t|
    t.string "name"
    t.string "direction"
    t.string "region"
    t.string "photo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "photo1"
    t.string "photo2"
    t.string "photo3"
    t.string "photo4"
    t.bigint "user_id"
    t.boolean "status", default: true
    t.integer "capability"
    t.index ["user_id"], name: "index_campgrounds_on_user_id"
  end

  create_table "posts", force: :cascade do |t|
    t.text "opinion"
    t.bigint "campground_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["campground_id"], name: "index_posts_on_campground_id"
    t.index ["user_id"], name: "index_posts_on_user_id"
  end

  create_table "reservations", force: :cascade do |t|
    t.date "initialDay"
    t.date "finalDay"
    t.boolean "payment", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "campground_id"
    t.bigint "user_id"
    t.index ["campground_id"], name: "index_reservations_on_campground_id"
    t.index ["user_id"], name: "index_reservations_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.string "last_name"
    t.integer "phone"
    t.integer "role", default: 0
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "campgrounds", "users"
  add_foreign_key "posts", "campgrounds"
  add_foreign_key "posts", "users"
  add_foreign_key "reservations", "campgrounds"
  add_foreign_key "reservations", "users"
end
