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

ActiveRecord::Schema.define(:version => 20121212193631) do

  create_table "addresses", :force => true do |t|
    t.integer  "customer_id"
    t.integer  "client_id"
    t.text     "line_1"
    t.text     "line_2"
    t.string   "city"
    t.string   "state"
    t.integer  "pincode"
    t.string   "primary_email"
    t.string   "secondary_email"
    t.integer  "mobile_number"
    t.integer  "alternate_number"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "clients", :force => true do |t|
    t.string   "name"
    t.integer  "address_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "customers", :force => true do |t|
    t.string   "name"
    t.integer  "address_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "invoice_clients", :force => true do |t|
    t.integer  "invoice_id"
    t.integer  "client_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "invoice_products", :force => true do |t|
    t.integer  "invoice_id"
    t.integer  "product_id"
    t.datetime "from_date"
    t.datetime "to_date"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "invoices", :force => true do |t|
    t.integer  "customer_id"
    t.integer  "product_id"
    t.integer  "status_id"
    t.integer  "tax"
    t.integer  "grand_total"
    t.integer  "discount"
    t.datetime "date"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "products", :force => true do |t|
    t.integer  "invoice"
    t.string   "item"
    t.text     "description"
    t.integer  "price"
    t.integer  "quantity"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "statuses", :force => true do |t|
    t.string   "code"
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
