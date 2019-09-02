class CreateSubcategories < ActiveRecord::Migration[6.0]
  def change
    create_table :subcategories do |t|
      t.integer :product_id
      t.integer :user_id
      t.integer :category_id

      t.timestamps
    end
  end
end
