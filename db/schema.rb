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

ActiveRecord::Schema.define(version: 2018_10_08_224527) do

  create_table "blogs", force: :cascade do |t|
    t.string "title", limit: 100, null: false
    t.datetime "date", null: false
    t.text "content", limit: 5000, null: false
    t.integer "num_likes"
    t.binary "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "breeds", force: :cascade do |t|
    t.string "breed_type", limit: 30, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "comments", force: :cascade do |t|
    t.text "content", limit: 300, null: false
    t.datetime "date", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "dogs", force: :cascade do |t|
    t.string "name", limit: 100, null: false
    t.integer "age", limit: 2, null: false
    t.string "sex", limit: 1, null: false
    t.text "description", limit: 5000, null: false
    t.integer "interests", limit: 1, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "likes", force: :cascade do |t|
    t.integer "id_dog2", null: false
    t.boolean "like_status", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "dog_id"
    t.index ["dog_id"], name: "index_likes_on_dog_id"
  end

  create_table "locations", force: :cascade do |t|
    t.string "punto", null: false
    t.string "city", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "matches", force: :cascade do |t|
    t.datetime "date", null: false
    t.boolean "match_status", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "photo_galeries", force: :cascade do |t|
    t.binary "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "imageable_id"
    t.string "imageable_type"
  end

  create_table "preferences", force: :cascade do |t|
    t.boolean "privacy", null: false
    t.string "language", limit: 20, null: false
    t.integer "max_distance", limit: 4, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "publications", force: :cascade do |t|
    t.integer "num_comments"
    t.integer "num_likes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tags", force: :cascade do |t|
    t.string "tag_name", limit: 15, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name", limit: 100, null: false
    t.string "last_name", limit: 100, null: false
    t.integer "age", limit: 3
    t.string "phone_number", limit: 20, null: false
    t.text "additional_info", limit: 5000
    t.string "country", limit: 56
    t.string "city", limit: 85
    t.string "password", limit: 16, null: false
    t.string "email", limit: 100, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
