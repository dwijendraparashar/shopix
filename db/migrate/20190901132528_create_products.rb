class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.integer :category_id
      t.string :title
      t.text :description
      t.string :image
      t.float :unit_price, default: 0.0
      t.integer :available_item, default: 0
      t.boolean :is_active, default: true

      t.timestamps
    end
  end
end
