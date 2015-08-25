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

ActiveRecord::Schema.define(:version => 20150825043329) do

  create_table "advocate_services", :force => true do |t|
    t.integer  "service_code"
    t.string   "service_name"
    t.decimal  "charge"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
    t.integer  "advocate_id"
  end

  create_table "advocates", :force => true do |t|
    t.integer  "advocate_code"
    t.string   "advocate_name"
    t.string   "city_name"
    t.decimal  "experience"
    t.decimal  "rate"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "articles", :force => true do |t|
    t.string   "title"
    t.string   "body"
    t.string   "author"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "comments", :force => true do |t|
    t.string   "commenter"
    t.string   "body"
    t.integer  "article_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "courses", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "data_files", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "demos", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "gender_id"
    t.string   "address"
    t.date     "dob"
    t.date     "doj"
    t.integer  "place_id"
    t.string   "email"
    t.string   "mob"
    t.string   "src"
    t.string   "dest"
    t.string   "status"
    t.integer  "tno"
    t.string   "tname"
    t.string   "check"
    t.decimal  "amt"
    t.integer  "tickno"
    t.integer  "cno"
    t.string   "mpay"
    t.string   "prf"
    t.integer  "sno"
    t.integer  "idno"
  end

  create_table "examples", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "genders", :force => true do |t|
    t.string   "gender_type"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "labs", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "layorreports", :force => true do |t|
    t.integer  "layorcode"
    t.string   "layorname"
    t.string   "city"
    t.integer  "exp"
    t.integer  "rate"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "layorservices", :force => true do |t|
    t.integer  "servicecode"
    t.string   "servicename"
    t.decimal  "charge"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.integer  "layorcode"
  end

  create_table "lowerdetails", :force => true do |t|
    t.integer  "lowyer_code"
    t.string   "lowyer"
    t.float    "experience"
    t.string   "city"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.float    "rate"
  end

  create_table "lowyerservicedetails", :force => true do |t|
    t.string   "lowyer_code"
    t.string   "service_code"
    t.string   "service_name"
    t.float    "charges"
    t.integer  "lowyerdetail_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.integer  "lowerdetail_id"
  end

  create_table "lreports", :force => true do |t|
    t.integer  "layorcode"
    t.string   "layorname"
    t.string   "city"
    t.integer  "exp"
    t.integer  "rate"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "lservices", :force => true do |t|
    t.integer  "servicecode"
    t.string   "servicename"
    t.decimal  "charge"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.integer  "lreport_id"
  end

  create_table "mainreports", :force => true do |t|
    t.string   "city"
    t.string   "servicename"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.integer  "layorservice_id"
    t.integer  "layorreport_id"
  end

  create_table "mains", :force => true do |t|
    t.string   "city"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "nn", :id => false, :force => true do |t|
    t.string "name", :limit => 20
  end

  create_table "places", :force => true do |t|
    t.string   "src"
    t.string   "dest"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "reservations", :force => true do |t|
    t.string   "pname"
    t.string   "paddress"
    t.integer  "age"
    t.string   "gender"
    t.date     "doj"
    t.string   "sourse"
    t.string   "destination"
    t.string   "tname"
    t.string   "status"
    t.integer  "availseats"
    t.integer  "nooFpass"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "srcdes", :force => true do |t|
    t.string   "src"
    t.string   "dest"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "srcdes_id"
  end

  create_table "teaching_assistants", :force => true do |t|
    t.string   "name"
    t.integer  "ta_duty_id"
    t.string   "ta_duty_type"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "tests", :force => true do |t|
    t.string   "name"
    t.string   "address"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "traindetails", :force => true do |t|
    t.string   "name"
    t.integer  "number"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "address"
    t.date     "dob"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "gender_id"
  end

end
