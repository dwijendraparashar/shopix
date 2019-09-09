class CreateRatingReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :rating_reviews do |t|
      t.integer :product_id
      t.integer :user_id
      t.integer :rating
      t.text :review

      t.timestamps
    end
  end
end
