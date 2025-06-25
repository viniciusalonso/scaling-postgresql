# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.2].define(version: 2025_06_24_235322) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "pg_stat_statements"
  enable_extension "plpgsql"

  create_table "people", id: false, force: :cascade do |t|
    t.serial "id", null: false
    t.text "name"
    t.integer "age"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
  end

  create_table "people_medium", id: false, force: :cascade do |t|
    t.integer "id", default: -> { "nextval('people_id_seq'::regclass)" }, null: false
    t.text "name"
    t.integer "age"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
  end

  create_table "people_old", id: false, force: :cascade do |t|
    t.integer "id", default: -> { "nextval('people_id_seq'::regclass)" }, null: false
    t.text "name"
    t.integer "age"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
  end

  create_table "people_young", id: false, force: :cascade do |t|
    t.integer "id", default: -> { "nextval('people_id_seq'::regclass)" }, null: false
    t.text "name"
    t.integer "age"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
  end

  create_table "posts", force: :cascade do |t|
    t.string "title"
    t.text "body"
    t.string "slug"
    t.integer "author_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "posts_with_index", force: :cascade do |t|
    t.string "title"
    t.text "body"
    t.string "slug"
    t.integer "author_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["author_id"], name: "index_posts_with_index_on_author_id"
  end
end
