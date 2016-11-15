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


ActiveRecord::Schema.define(version: 20161115100837) do


  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "appointments", force: :cascade do |t|
    t.datetime "date"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.integer  "user_id"
    t.string   "service"
    t.string   "drink"
    t.integer  "barber_service_id"
    t.index ["barber_service_id"], name: "index_appointments_on_barber_service_id", using: :btree
    t.index ["user_id"], name: "index_appointments_on_user_id", using: :btree
  end

  create_table "barber_services", force: :cascade do |t|
    t.integer  "service_id"
    t.integer  "barber_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "duration"
    t.float    "price"
    t.integer  "appointment_id"
    t.index ["appointment_id"], name: "index_barber_services_on_appointment_id", using: :btree
    t.index ["barber_id"], name: "index_barber_services_on_barber_id", using: :btree
    t.index ["service_id"], name: "index_barber_services_on_service_id", using: :btree
  end

  create_table "barbers", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.string   "location"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.float    "latitude"
    t.float    "longitude"
    t.integer  "user_id"
    t.string   "drinks"
    t.integer  "barbershop_id"
    t.string   "photo"
    t.index ["barbershop_id"], name: "index_barbers_on_barbershop_id", using: :btree
    t.index ["user_id"], name: "index_barbers_on_user_id", using: :btree
  end

  create_table "barbershops", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.string   "location"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "pg_search_documents", force: :cascade do |t|
    t.text     "content"
    t.string   "searchable_type"
    t.integer  "searchable_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["searchable_type", "searchable_id"], name: "index_pg_search_documents_on_searchable_type_and_searchable_id", using: :btree
  end

  create_table "reviews", force: :cascade do |t|
    t.string   "description"
    t.string   "rating"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "user_id"
    t.integer  "barber_id"
    t.string   "photo"
    t.index ["barber_id"], name: "index_reviews_on_barber_id", using: :btree
    t.index ["user_id"], name: "index_reviews_on_user_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.string   "provider"
    t.string   "uid"
    t.string   "facebook_picture_url"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "token"
    t.datetime "token_expiry"
    t.string   "name"
    t.boolean  "admin"
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "appointments", "users"
  add_foreign_key "barbers", "barbershops"
  add_foreign_key "reviews", "barbers"
  add_foreign_key "reviews", "users"
end
