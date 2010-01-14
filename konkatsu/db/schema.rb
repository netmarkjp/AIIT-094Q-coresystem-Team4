# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of ActiveRecord to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 4) do

  create_table "members", :force => true do |t|
    t.string   "sex"
    t.string   "name"
    t.string   "nickname"
    t.string   "age"
    t.string   "height"
    t.string   "weight"
    t.string   "job"
    t.string   "income"
    t.string   "local"
    t.string   "motivation"
    t.string   "email"
    t.string   "favorite_character"
    t.string   "login"
    t.datetime "regist_date"
    t.datetime "exit_date"
    t.string   "crypted_password"
    t.string   "salt"
    t.string   "remember_token"
    t.string   "remember_token_expires_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "messages", :force => true do |t|
    t.string   "message_id"
    t.string   "from_member_id"
    t.string   "to_member_id"
    t.text     "body"
    t.datetime "send_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sessions", :force => true do |t|
    t.string   "session_id", :null => false
    t.text     "data"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "sessions", ["session_id"], :name => "index_sessions_on_session_id"
  add_index "sessions", ["updated_at"], :name => "index_sessions_on_updated_at"

end
