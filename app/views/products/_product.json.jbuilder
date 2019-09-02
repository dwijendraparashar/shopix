json.extract! product, :id, :category_id, :title, :description, :image, :unit_price, :available_item, :is_active, :created_at, :updated_at
json.url product_url(product, format: :json)
