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

ActiveRecord::Schema.define(version: 2019_08_31_171112) do

  create_table "active_storage_attachments", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "assistances", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "position"
    t.string "name"
    t.string "title"
    t.text "content"
    t.text "note"
    t.date "creation_date"
    t.date "revision_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "attachments", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.date "publication_date"
    t.bigint "assistance_id"
    t.bigint "health_id"
    t.bigint "immigration_id"
    t.bigint "pension_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "pdf"
    t.index ["assistance_id"], name: "index_attachments_on_assistance_id"
    t.index ["health_id"], name: "index_attachments_on_health_id"
    t.index ["immigration_id"], name: "index_attachments_on_immigration_id"
    t.index ["pension_id"], name: "index_attachments_on_pension_id"
  end

  create_table "healths", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "position"
    t.string "name"
    t.string "title"
    t.text "content"
    t.text "note"
    t.date "creation_date"
    t.date "revision_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "immigrations", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "position"
    t.string "name"
    t.string "title"
    t.text "content"
    t.text "note"
    t.date "creation_date"
    t.date "revision_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pensions", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "position"
    t.string "name"
    t.string "title"
    t.text "content"
    t.text "note"
    t.date "creation_date"
    t.date "revision_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "user_type"
    t.string "name"
    t.string "forename"
    t.string "office"
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "attachments", "assistances"
  add_foreign_key "attachments", "healths"
  add_foreign_key "attachments", "immigrations"
  add_foreign_key "attachments", "pensions"
end
