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

ActiveRecord::Schema.define(:version => 20120210040445) do

  create_table "assignments", :force => true do |t|
    t.integer  "section_id"
    t.integer  "stock_card_id"
    t.integer  "position"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "row_order"
  end

  create_table "color_themes", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "modelarios", :force => true do |t|
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "color_theme_id"
  end

  create_table "offers", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "offers_stock_cards", :id => false, :force => true do |t|
    t.integer  "offer_id"
    t.integer  "stock_card_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sectionings", :force => true do |t|
    t.integer  "section_id"
    t.integer  "subsection_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sections", :force => true do |t|
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "modelario_id"
    t.integer  "position"
    t.boolean  "root",         :default => false
    t.integer  "row_order"
  end

  create_table "sections_stock_cards", :id => false, :force => true do |t|
    t.integer  "section_id"
    t.integer  "stock_card_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "stock_cards", :force => true do |t|
    t.string   "sku"
    t.string   "name"
    t.string   "photo"
    t.string   "note1"
    t.string   "note2"
    t.string   "note3"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "note4"
    t.boolean  "watch"
  end

end
