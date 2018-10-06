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

ActiveRecord::Schema.define(version: 20181003023717) do

  create_table "benches", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.text "sdescription"
    t.string "image"
    t.string "previewo"
    t.string "previewt"
    t.string "previewth"
    t.integer "price"
    t.integer "offerprice"
    t.string "coupon"
    t.string "brand"
    t.string "color"
    t.string "warrenty"
    t.string "material"
    t.string "saving"
    t.string "off"
    t.string "height"
    t.string "width"
    t.string "depth"
    t.string "dimension"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "besidets", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.text "sdescription"
    t.string "image"
    t.string "previewo"
    t.string "previewt"
    t.string "previewth"
    t.integer "price"
    t.integer "offerprice"
    t.string "coupon"
    t.string "brand"
    t.string "color"
    t.string "warrenty"
    t.string "material"
    t.string "saving"
    t.string "off"
    t.string "height"
    t.string "width"
    t.string "depth"
    t.string "dimension"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "bookcabinets", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.text "sdescription"
    t.string "image"
    t.string "previewo"
    t.string "previewt"
    t.string "previewth"
    t.integer "price"
    t.integer "offerprice"
    t.string "coupon"
    t.string "brand"
    t.string "color"
    t.string "warrenty"
    t.string "material"
    t.string "saving"
    t.string "off"
    t.string "height"
    t.string "width"
    t.string "depth"
    t.string "dimension"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "centerts", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.text "sdescription"
    t.string "image"
    t.string "previewo"
    t.string "previewt"
    t.string "previewth"
    t.integer "price"
    t.integer "offerprice"
    t.string "coupon"
    t.string "brand"
    t.string "color"
    t.string "warrenty"
    t.string "material"
    t.string "saving"
    t.string "off"
    t.string "height"
    t.string "width"
    t.string "depth"
    t.string "dimension"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "chairs", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.text "sdescription"
    t.string "image"
    t.string "previewo"
    t.string "previewt"
    t.string "previewth"
    t.integer "price"
    t.integer "offerprice"
    t.string "coupon"
    t.string "brand"
    t.string "color"
    t.string "warrenty"
    t.string "material"
    t.string "saving"
    t.string "off"
    t.string "height"
    t.string "width"
    t.string "depth"
    t.string "dimension"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "diningbenches", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.text "sdescription"
    t.string "image"
    t.string "previewo"
    t.string "previewt"
    t.string "previewth"
    t.integer "price"
    t.integer "offerprice"
    t.string "coupon"
    t.string "brand"
    t.string "color"
    t.string "warrenty"
    t.string "material"
    t.string "saving"
    t.string "off"
    t.string "height"
    t.string "width"
    t.string "depth"
    t.string "dimension"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "diningchairs", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.text "sdescription"
    t.string "image"
    t.string "previewo"
    t.string "previewt"
    t.string "previewth"
    t.integer "price"
    t.integer "offerprice"
    t.string "coupon"
    t.string "brand"
    t.string "color"
    t.string "warrenty"
    t.string "material"
    t.string "saving"
    t.string "off"
    t.string "height"
    t.string "width"
    t.string "depth"
    t.string "dimension"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "diningts", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.text "sdescription"
    t.string "image"
    t.string "previewo"
    t.string "previewt"
    t.string "previewth"
    t.integer "price"
    t.integer "offerprice"
    t.string "coupon"
    t.string "brand"
    t.string "color"
    t.string "warrenty"
    t.string "material"
    t.string "saving"
    t.string "off"
    t.string "height"
    t.string "width"
    t.string "depth"
    t.string "dimension"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "divanbs", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.text "sdescription"
    t.string "image"
    t.string "previewo"
    t.string "previewt"
    t.string "previewth"
    t.integer "price"
    t.integer "offerprice"
    t.string "coupon"
    t.string "brand"
    t.string "color"
    t.string "warrenty"
    t.string "material"
    t.string "saving"
    t.string "off"
    t.string "height"
    t.string "width"
    t.string "depth"
    t.string "dimension"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "doublebs", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.text "sdescription"
    t.string "image"
    t.string "previewo"
    t.string "previewt"
    t.string "previewth"
    t.integer "price"
    t.integer "offerprice"
    t.string "coupon"
    t.string "brand"
    t.string "color"
    t.string "warrenty"
    t.string "material"
    t.string "saving"
    t.string "off"
    t.string "height"
    t.string "width"
    t.string "depth"
    t.string "dimension"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "dressingts", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.text "sdescription"
    t.string "image"
    t.string "previewo"
    t.string "previewt"
    t.string "previewth"
    t.integer "price"
    t.integer "offerprice"
    t.string "coupon"
    t.string "brand"
    t.string "color"
    t.string "warrenty"
    t.string "material"
    t.string "saving"
    t.string "off"
    t.string "height"
    t.string "width"
    t.string "depth"
    t.string "dimension"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "fabricsofasets", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.text "sdescription"
    t.string "image"
    t.string "previewo"
    t.string "previewt"
    t.string "previewth"
    t.integer "price"
    t.integer "offerprice"
    t.string "coupon"
    t.string "brand"
    t.string "color"
    t.string "warrenty"
    t.string "material"
    t.string "saving"
    t.string "off"
    t.string "height"
    t.string "width"
    t.string "depth"
    t.string "dimension"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "hydraulicstoragebs", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.text "sdescription"
    t.string "image"
    t.string "previewo"
    t.string "previewt"
    t.string "previewth"
    t.integer "price"
    t.integer "offerprice"
    t.string "coupon"
    t.string "brand"
    t.string "color"
    t.string "warrenty"
    t.string "material"
    t.string "saving"
    t.string "off"
    t.string "height"
    t.string "width"
    t.string "depth"
    t.string "dimension"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "interiors", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "mobile"
    t.string "city"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "kidsbs", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.text "sdescription"
    t.string "image"
    t.string "previewo"
    t.string "previewt"
    t.string "previewth"
    t.integer "price"
    t.integer "offerprice"
    t.string "coupon"
    t.string "brand"
    t.string "color"
    t.string "warrenty"
    t.string "material"
    t.string "saving"
    t.string "off"
    t.string "height"
    t.string "width"
    t.string "depth"
    t.string "dimension"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "kidstudyts", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.text "sdescription"
    t.string "image"
    t.string "previewo"
    t.string "previewt"
    t.string "previewth"
    t.integer "price"
    t.integer "offerprice"
    t.string "coupon"
    t.string "brand"
    t.string "color"
    t.string "warrenty"
    t.string "material"
    t.string "saving"
    t.string "off"
    t.string "height"
    t.string "width"
    t.string "depth"
    t.string "dimension"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "kidswardrobs", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.text "sdescription"
    t.string "image"
    t.string "previewo"
    t.string "previewt"
    t.string "previewth"
    t.integer "price"
    t.integer "offerprice"
    t.string "coupon"
    t.string "brand"
    t.string "color"
    t.string "warrenty"
    t.string "material"
    t.string "saving"
    t.string "off"
    t.string "height"
    t.string "width"
    t.string "depth"
    t.string "dimension"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "kingsizebs", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.text "sdescription"
    t.string "image"
    t.string "previewo"
    t.string "previewt"
    t.string "previewth"
    t.integer "price"
    t.integer "offerprice"
    t.string "coupon"
    t.string "brand"
    t.string "color"
    t.string "warrenty"
    t.string "material"
    t.string "saving"
    t.string "off"
    t.string "height"
    t.string "width"
    t.string "depth"
    t.string "dimension"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "kitchencabinets", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.text "sdescription"
    t.string "image"
    t.string "previewo"
    t.string "previewt"
    t.string "previewth"
    t.integer "price"
    t.integer "offerprice"
    t.string "coupon"
    t.string "brand"
    t.string "color"
    t.string "warrenty"
    t.string "material"
    t.string "saving"
    t.string "off"
    t.string "height"
    t.string "width"
    t.string "depth"
    t.string "dimension"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "lshapedcornersofas", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.text "sdescription"
    t.string "image"
    t.string "previewo"
    t.string "previewt"
    t.string "previewth"
    t.integer "price"
    t.integer "offerprice"
    t.string "coupon"
    t.string "brand"
    t.string "color"
    t.string "warrenty"
    t.string "material"
    t.string "saving"
    t.string "off"
    t.string "height"
    t.string "width"
    t.string "depth"
    t.string "dimension"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "oneseatersofas", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.text "sdescription"
    t.string "image"
    t.string "previewo"
    t.string "previewt"
    t.string "previewth"
    t.integer "price"
    t.integer "offerprice"
    t.string "coupon"
    t.string "brand"
    t.string "color"
    t.string "warrenty"
    t.string "material"
    t.string "saving"
    t.string "off"
    t.string "height"
    t.string "width"
    t.string "depth"
    t.string "dimension"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "order_items", force: :cascade do |t|
    t.integer "order_id", null: false
    t.integer "product_id", null: false
    t.integer "quantity", null: false
    t.decimal "price", precision: 15, scale: 2, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["order_id"], name: "index_order_items_on_order_id"
    t.index ["product_id"], name: "index_order_items_on_product_id"
  end

  create_table "orders", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.decimal "sub_total", precision: 15, scale: 2, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "order_id"
    t.string "token"
    t.index ["order_id"], name: "index_orders_on_order_id"
  end

  create_table "product_properties", force: :cascade do |t|
    t.integer "product_id"
    t.string "title"
    t.string "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_id"], name: "index_product_properties_on_product_id"
  end

  create_table "products", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.text "sdescription"
    t.string "image"
    t.decimal "price", precision: 18, scale: 4
    t.decimal "offerprice", precision: 18, scale: 4
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "queensizebs", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.text "sdescription"
    t.string "image"
    t.string "previewo"
    t.string "previewt"
    t.string "previewth"
    t.integer "price"
    t.integer "offerprice"
    t.string "coupon"
    t.string "brand"
    t.string "color"
    t.string "warrenty"
    t.string "material"
    t.string "saving"
    t.string "off"
    t.string "height"
    t.string "width"
    t.string "depth"
    t.string "dimension"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sidets", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.text "sdescription"
    t.string "image"
    t.string "previewo"
    t.string "previewt"
    t.string "previewth"
    t.integer "price"
    t.integer "offerprice"
    t.string "coupon"
    t.string "brand"
    t.string "color"
    t.string "warrenty"
    t.string "material"
    t.string "saving"
    t.string "off"
    t.string "height"
    t.string "width"
    t.string "depth"
    t.string "dimension"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "singlebs", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.text "sdescription"
    t.string "image"
    t.string "previewo"
    t.string "previewt"
    t.string "previewth"
    t.integer "price"
    t.integer "offerprice"
    t.string "coupon"
    t.string "brand"
    t.string "color"
    t.string "warrenty"
    t.string "material"
    t.string "saving"
    t.string "off"
    t.string "height"
    t.string "width"
    t.string "depth"
    t.string "dimension"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sofacumbs", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.text "sdescription"
    t.string "image"
    t.string "previewo"
    t.string "previewt"
    t.string "previewth"
    t.integer "price"
    t.integer "offerprice"
    t.string "coupon"
    t.string "brand"
    t.string "color"
    t.string "warrenty"
    t.string "material"
    t.string "saving"
    t.string "off"
    t.string "height"
    t.string "width"
    t.string "depth"
    t.string "dimension"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sofas", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.text "sdescription"
    t.string "image"
    t.string "previewo"
    t.string "previewt"
    t.string "previewth"
    t.integer "price"
    t.integer "offerprice"
    t.string "coupon"
    t.string "brand"
    t.string "color"
    t.string "warrenty"
    t.string "material"
    t.string "saving"
    t.string "off"
    t.string "height"
    t.string "width"
    t.string "depth"
    t.string "dimension"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "spotts", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.text "sdescription"
    t.string "image"
    t.string "previewo"
    t.string "previewt"
    t.string "previewth"
    t.integer "price"
    t.integer "offerprice"
    t.string "coupon"
    t.string "brand"
    t.string "color"
    t.string "warrenty"
    t.string "material"
    t.string "saving"
    t.string "off"
    t.string "height"
    t.string "width"
    t.string "depth"
    t.string "dimension"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "threeseatersofas", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.text "sdescription"
    t.string "image"
    t.string "previewo"
    t.string "previewt"
    t.string "previewth"
    t.integer "price"
    t.integer "offerprice"
    t.string "coupon"
    t.string "brand"
    t.string "color"
    t.string "warrenty"
    t.string "material"
    t.string "saving"
    t.string "off"
    t.string "height"
    t.string "width"
    t.string "depth"
    t.string "dimension"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tvcabinets", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.text "sdescription"
    t.string "image"
    t.string "previewo"
    t.string "previewt"
    t.string "previewth"
    t.integer "price"
    t.integer "offerprice"
    t.string "coupon"
    t.string "brand"
    t.string "color"
    t.string "warrenty"
    t.string "material"
    t.string "saving"
    t.string "off"
    t.string "height"
    t.string "width"
    t.string "depth"
    t.string "dimension"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "twoseatersofas", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.text "sdescription"
    t.string "image"
    t.string "previewo"
    t.string "previewt"
    t.string "previewth"
    t.integer "price"
    t.integer "offerprice"
    t.string "coupon"
    t.string "brand"
    t.string "color"
    t.string "warrenty"
    t.string "material"
    t.string "saving"
    t.string "off"
    t.string "height"
    t.string "width"
    t.string "depth"
    t.string "dimension"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "upholsteredbs", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.text "sdescription"
    t.string "image"
    t.string "previewo"
    t.string "previewt"
    t.string "previewth"
    t.integer "price"
    t.integer "offerprice"
    t.string "coupon"
    t.string "brand"
    t.string "color"
    t.string "warrenty"
    t.string "material"
    t.string "saving"
    t.string "off"
    t.string "height"
    t.string "width"
    t.string "depth"
    t.string "dimension"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.string "full_name"
    t.string "mobile_number"
    t.string "verification_code"
    t.boolean "is_verified"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "wardrobes", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.text "sdescription"
    t.string "image"
    t.string "previewo"
    t.string "previewt"
    t.string "previewth"
    t.integer "price"
    t.integer "offerprice"
    t.string "coupon"
    t.string "brand"
    t.string "color"
    t.string "warrenty"
    t.string "material"
    t.string "saving"
    t.string "off"
    t.string "height"
    t.string "width"
    t.string "depth"
    t.string "dimension"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "woodensofasets", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.text "sdescription"
    t.string "image"
    t.string "previewo"
    t.string "previewt"
    t.string "previewth"
    t.integer "price"
    t.integer "offerprice"
    t.string "coupon"
    t.string "brand"
    t.string "color"
    t.string "warrenty"
    t.string "material"
    t.string "saving"
    t.string "off"
    t.string "height"
    t.string "width"
    t.string "depth"
    t.string "dimension"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "writingts", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.text "sdescription"
    t.string "image"
    t.string "previewo"
    t.string "previewt"
    t.string "previewth"
    t.integer "price"
    t.integer "offerprice"
    t.string "coupon"
    t.string "brand"
    t.string "color"
    t.string "warrenty"
    t.string "material"
    t.string "saving"
    t.string "off"
    t.string "height"
    t.string "width"
    t.string "depth"
    t.string "dimension"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
