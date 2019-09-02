json.extract! category, :id, :title, :description, :is_active, :created_at, :updated_at
json.url category_url(category, format: :json)
