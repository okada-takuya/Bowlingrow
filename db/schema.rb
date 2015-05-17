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

ActiveRecord::Schema.define(version: 20150516160453) do

  create_table "game_lanes", force: :cascade do |t|
    t.integer  "game_id"
    t.integer  "lane_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "game_lanes", ["game_id"], name: "index_game_lanes_on_game_id"
  add_index "game_lanes", ["lane_id"], name: "index_game_lanes_on_lane_id"

  create_table "game_teams", force: :cascade do |t|
    t.integer  "game_id"
    t.integer  "team_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "game_teams", ["game_id"], name: "index_game_teams_on_game_id"
  add_index "game_teams", ["team_id"], name: "index_game_teams_on_team_id"

  create_table "games", force: :cascade do |t|
    t.string   "name"
    t.integer  "match_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "games", ["match_id"], name: "index_games_on_match_id"

  create_table "lanes", force: :cascade do |t|
    t.string   "name"
    t.integer  "match_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "lanes", ["match_id"], name: "index_lanes_on_match_id"

  create_table "match_users", force: :cascade do |t|
    t.integer  "match_id"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "match_users", ["match_id"], name: "index_match_users_on_match_id"
  add_index "match_users", ["user_id"], name: "index_match_users_on_user_id"

  create_table "matches", force: :cascade do |t|
    t.string   "name"
    t.datetime "dates"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "positions", force: :cascade do |t|
    t.integer  "lank"
    t.string   "name"
    t.string   "abbreviation"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "scores", force: :cascade do |t|
    t.integer  "score"
    t.integer  "user_id"
    t.integer  "game_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "scores", ["game_id"], name: "index_scores_on_game_id"
  add_index "scores", ["user_id"], name: "index_scores_on_user_id"

  create_table "teams", force: :cascade do |t|
    t.string   "name"
    t.integer  "match_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "teams", ["match_id"], name: "index_teams_on_match_id"

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.integer  "position_id"
    t.integer  "team_id"
    t.integer  "lean_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "users", ["lean_id"], name: "index_users_on_lean_id"
  add_index "users", ["position_id"], name: "index_users_on_position_id"
  add_index "users", ["team_id"], name: "index_users_on_team_id"

end
