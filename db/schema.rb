ActiveRecord::Schema.define(version: 2020_07_06_154542) do

  create_table "products", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.string "image_url"
    t.decimal "price", precision: 10, scale: 2
    t.string "available"
    t.integer "stock_quantity"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
