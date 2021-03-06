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

ActiveRecord::Schema.define(version: 20160608145149) do

  create_table "rails_voter_ballot_form_details", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "ballot_form_id"
  end

  add_index "rails_voter_ballot_form_details", ["ballot_form_id"], name: "index_rails_voter_ballot_form_details_on_ballot_form_id"

  create_table "rails_voter_ballot_forms", force: :cascade do |t|
    t.string   "name",       null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rails_voter_voting_results", force: :cascade do |t|
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.integer  "ballot_form_detail_id"
  end

  add_index "rails_voter_voting_results", ["ballot_form_detail_id"], name: "index_rails_voter_voting_results_on_ballot_form_detail_id"

end
