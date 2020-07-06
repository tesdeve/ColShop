json.extract! product, :id, :title, :description, :image_url, :price, :available, :stock_quantity, :created_at, :updated_at
json.url product_url(product, format: :json)
