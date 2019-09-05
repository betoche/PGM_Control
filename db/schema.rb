# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_09_05_231016) do

  create_table "codes", force: :cascade do |t|
    t.string "code"
    t.string "operation"
    t.string "description"
    t.string "input"
    t.string "output"
    t.string "home_dir"
    t.boolean "daily"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "libraries", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "program_dummies", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "program_relationships", force: :cascade do |t|
    t.integer "parent_id", null: false
    t.integer "child_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["child_id"], name: "index_program_relationships_on_child_id"
    t.index ["parent_id"], name: "index_program_relationships_on_parent_id"
  end

  create_table "programs", force: :cascade do |t|
    t.string "member"
    t.integer "library_id", null: false
    t.integer "source_file_id", null: false
    t.integer "code_id", null: false
    t.boolean "is_sftp"
    t.boolean "is_ready"
    t.integer "transfers"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["code_id"], name: "index_programs_on_code_id"
    t.index ["library_id"], name: "index_programs_on_library_id"
    t.index ["source_file_id"], name: "index_programs_on_source_file_id"
  end

  create_table "source_files", force: :cascade do |t|
    t.string "name"
    t.integer "library_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["library_id"], name: "index_source_files_on_library_id"
  end

  add_foreign_key "program_relationships", "program_dummies", column: "child_id"
  add_foreign_key "program_relationships", "program_dummies", column: "parent_id"
  add_foreign_key "programs", "codes"
  add_foreign_key "programs", "libraries"
  add_foreign_key "programs", "source_files"
  add_foreign_key "source_files", "libraries"
end
