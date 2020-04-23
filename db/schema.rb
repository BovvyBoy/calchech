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

ActiveRecord::Schema.define(version: 2020_04_22_124252) do

  create_table "days", force: :cascade do |t|
    t.integer "plan_id"
    t.string "name"
    t.integer "target_calories"
    t.integer "total_calories"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "ingredients", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.integer "calories"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "meals", force: :cascade do |t|
    t.integer "day_id"
    t.string "name"
    t.string "dish"
    t.string "dish_type"
    t.string "origin"
    t.string "cuisine"
    t.string "diet"
    t.string "description"
    t.string "image"
    t.string "cooking_instructions"
    t.float "calories"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "plans", force: :cascade do |t|
    t.string "name"
    t.integer "duration"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "recipes", force: :cascade do |t|
    t.integer "meal_id"
    t.integer "ingredient_id"
    t.integer "ingredient_quantity"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
