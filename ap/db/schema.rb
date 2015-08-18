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

ActiveRecord::Schema.define(version: 20150815161615) do

  create_table "ahoy_events", force: :cascade do |t|
    t.uuid     "visit_id",   limit: 16
    t.integer  "user_id",    limit: 4
    t.string   "name",       limit: 255
    t.text     "properties", limit: 65535
    t.datetime "time"
  end

  add_index "ahoy_events", ["time"], name: "index_ahoy_events_on_time", using: :btree
  add_index "ahoy_events", ["user_id"], name: "index_ahoy_events_on_user_id", using: :btree
  add_index "ahoy_events", ["visit_id"], name: "index_ahoy_events_on_visit_id", using: :btree

  create_table "board_posts", force: :cascade do |t|
    t.string   "title",      limit: 255
    t.text     "content",    limit: 65535
    t.integer  "upvotes",    limit: 4,     default: 0
    t.integer  "user_id",    limit: 4
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
  end

  create_table "code_cases", force: :cascade do |t|
    t.text     "description", limit: 65535
    t.string   "title",       limit: 255
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "code_solutions", force: :cascade do |t|
    t.text     "content",    limit: 65535
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "comment_upvotes", force: :cascade do |t|
    t.integer  "user_id",    limit: 4
    t.integer  "comment_id", limit: 4
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "comments", force: :cascade do |t|
    t.text     "content",       limit: 65535
    t.integer  "upvotes",       limit: 4,     default: 0
    t.integer  "board_post_id", limit: 4
    t.integer  "user_id",       limit: 4
    t.datetime "created_at",                              null: false
    t.datetime "updated_at",                              null: false
  end

  create_table "design_cases", force: :cascade do |t|
    t.string   "title",          limit: 255,   default: ""
    t.text     "description",    limit: 65535
    t.text     "design_problem", limit: 65535
    t.text     "questions",      limit: 65535
    t.text     "solution_1",     limit: 65535
    t.text     "solution_2",     limit: 65535
    t.text     "solution_3",     limit: 65535
    t.datetime "created_at",                                null: false
    t.datetime "updated_at",                                null: false
  end

  create_table "design_solutions", force: :cascade do |t|
    t.integer  "design_case_id",    limit: 4
    t.integer  "user_id",           limit: 4
    t.text     "one_pro_1",         limit: 65535
    t.text     "one_pro_2",         limit: 65535
    t.text     "one_pro_3",         limit: 65535
    t.text     "one_con_1",         limit: 65535
    t.text     "one_con_2",         limit: 65535
    t.text     "one_con_3",         limit: 65535
    t.text     "two_pro_1",         limit: 65535
    t.text     "two_pro_2",         limit: 65535
    t.text     "two_pro_3",         limit: 65535
    t.text     "two_con_1",         limit: 65535
    t.text     "two_con_2",         limit: 65535
    t.text     "two_con_3",         limit: 65535
    t.text     "three_pro_1",       limit: 65535
    t.text     "three_pro_2",       limit: 65535
    t.text     "three_pro_3",       limit: 65535
    t.text     "three_con_1",       limit: 65535
    t.text     "three_con_2",       limit: 65535
    t.text     "three_con_3",       limit: 65535
    t.integer  "solution_1_rank_1", limit: 4
    t.integer  "solution_2_rank_1", limit: 4
    t.integer  "solution_3_rank_1", limit: 4
    t.text     "my_solution",       limit: 65535
    t.integer  "solution_1_rank_2", limit: 4
    t.integer  "solution_2_rank_2", limit: 4
    t.integer  "solution_3_rank_2", limit: 4
    t.integer  "my_solution_rank",  limit: 4
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
  end

  create_table "groups", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "issues", force: :cascade do |t|
    t.text     "content",    limit: 65535
    t.boolean  "complete",   limit: 1
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "memberships", force: :cascade do |t|
    t.integer  "user_id",        limit: 4
    t.integer  "partnership_id", limit: 4
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "notifications", force: :cascade do |t|
    t.integer  "user_notified", limit: 4
    t.string   "message",       limit: 255
    t.string   "link",          limit: 255
    t.boolean  "read",          limit: 1
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "ownerships", force: :cascade do |t|
    t.integer  "project_id",     limit: 4
    t.integer  "partnership_id", limit: 4
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "partnerships", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "projects", force: :cascade do |t|
    t.string   "title",                 limit: 255
    t.text     "technical_description", limit: 65535
    t.string   "git_link",              limit: 255
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  create_table "resources", force: :cascade do |t|
    t.text     "content",    limit: 65535
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "titles", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.integer  "group_id",   limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "tweets", force: :cascade do |t|
    t.text     "message",    limit: 65535
    t.integer  "user_id",    limit: 4
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name",                   limit: 255
    t.string   "nickname",               limit: 255
    t.boolean  "admin",                  limit: 1,   default: false
    t.datetime "created_at",                                         null: false
    t.datetime "updated_at",                                         null: false
    t.string   "email",                  limit: 255, default: "",    null: false
    t.string   "encrypted_password",     limit: 255, default: "",    null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "versions", force: :cascade do |t|
    t.string   "item_type",  limit: 255,        null: false
    t.integer  "item_id",    limit: 4,          null: false
    t.string   "event",      limit: 255,        null: false
    t.string   "whodunnit",  limit: 255
    t.text     "object",     limit: 4294967295
    t.datetime "created_at"
  end

  add_index "versions", ["item_type", "item_id"], name: "index_versions_on_item_type_and_item_id", using: :btree

  create_table "visits", force: :cascade do |t|
    t.uuid     "visitor_id",       limit: 16
    t.string   "ip",               limit: 255
    t.text     "user_agent",       limit: 65535
    t.text     "referrer",         limit: 65535
    t.text     "landing_page",     limit: 65535
    t.integer  "user_id",          limit: 4
    t.string   "referring_domain", limit: 255
    t.string   "search_keyword",   limit: 255
    t.string   "browser",          limit: 255
    t.string   "os",               limit: 255
    t.string   "device_type",      limit: 255
    t.integer  "screen_height",    limit: 4
    t.integer  "screen_width",     limit: 4
    t.string   "country",          limit: 255
    t.string   "region",           limit: 255
    t.string   "city",             limit: 255
    t.string   "postal_code",      limit: 255
    t.decimal  "latitude",                       precision: 10
    t.decimal  "longitude",                      precision: 10
    t.string   "utm_source",       limit: 255
    t.string   "utm_medium",       limit: 255
    t.string   "utm_term",         limit: 255
    t.string   "utm_content",      limit: 255
    t.string   "utm_campaign",     limit: 255
    t.datetime "started_at"
  end

  add_index "visits", ["user_id"], name: "index_visits_on_user_id", using: :btree

end
