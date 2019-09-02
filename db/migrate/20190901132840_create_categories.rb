class CreateCategories < ActiveRecord::Migration[6.0]
  def change
    create_table :categories do |t|
      t.string :title
      t.text :description
      t.boolean :is_active,default: true

      t.timestamps
    end
  end
end
