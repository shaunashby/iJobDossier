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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130218154616) do

  create_table "application_targets", :force => true do |t|
    t.integer  "job_application_id"
    t.string   "company"
    t.string   "contact"
    t.string   "address"
    t.string   "notes"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.string   "email"
  end

  create_table "dossiers", :force => true do |t|
    t.integer  "job_application_id"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.text     "notes"
  end

  create_table "job_application_pools", :force => true do |t|
    t.string   "user"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "job_applications", :force => true do |t|
    t.integer  "job_application_pool_id"
    t.string   "jobtitle"
    t.string   "jobref"
    t.date     "deadline"
    t.datetime "created_at",              :null => false
    t.datetime "updated_at",              :null => false
    t.date     "submission"
    t.integer  "status"
  end

end
