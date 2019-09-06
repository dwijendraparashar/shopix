json.extract! rating_review, :id, :product_id, :user_id, :review, :comment, :created_at, :updated_at
json.url rating_review_url(rating_review, format: :json)
