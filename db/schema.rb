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

ActiveRecord::Schema[7.2].define(version: 2025_06_21_124550) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "pg_stat_statements"
  enable_extension "plpgsql"

  create_table "pgbench_accounts", primary_key: "aid", id: :integer, default: nil, force: :cascade do |t|
    t.integer "bid"
    t.integer "abalance"
    t.string "filler", limit: 84
  end

  create_table "pgbench_branches", primary_key: "bid", id: :integer, default: nil, force: :cascade do |t|
    t.integer "bbalance"
    t.string "filler", limit: 88
  end

  create_table "pgbench_history", id: false, force: :cascade do |t|
    t.integer "tid"
    t.integer "bid"
    t.integer "aid"
    t.integer "delta"
    t.datetime "mtime", precision: nil
    t.string "filler", limit: 22
  end

  create_table "pgbench_tellers", primary_key: "tid", id: :integer, default: nil, force: :cascade do |t|
    t.integer "bid"
    t.integer "tbalance"
    t.string "filler", limit: 84
  end

  create_table "posts", force: :cascade do |t|
    t.string "title"
    t.text "body"
    t.string "slug"
    t.integer "author_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end
end
