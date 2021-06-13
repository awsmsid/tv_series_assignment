# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_06_12_183210) do

  create_table "actors", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "countries", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "directors", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "directors_tv_series", force: :cascade do |t|
    t.integer "director_id"
    t.integer "tv_series_id"
    t.index ["director_id"], name: "index_directors_tv_series_on_director_id"
    t.index ["tv_series_id"], name: "index_directors_tv_series_on_tv_series_id"
  end

  create_table "genres", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "projects", force: :cascade do |t|
    t.string "shoot_location"
    t.integer "tv_series_id"
    t.integer "actor_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["actor_id"], name: "index_projects_on_actor_id"
    t.index ["tv_series_id"], name: "index_projects_on_tv_series_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.decimal "star"
    t.string "review_message"
    t.integer "tv_series_id"
    t.integer "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["tv_series_id"], name: "index_reviews_on_tv_series_id"
    t.index ["user_id"], name: "index_reviews_on_user_id"
  end

  create_table "tv_series", force: :cascade do |t|
    t.string "name"
    t.integer "number_of_seasons"
    t.date "date_of_first_release"
    t.integer "country_id"
    t.integer "genre_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["country_id"], name: "index_tv_series_on_country_id"
    t.index ["genre_id"], name: "index_tv_series_on_genre_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
