class AddNameToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :name, :string
    add_column :users, :gender, :string
    add_column :users, :phone, :string
    add_column :users, :image, :string
    add_column :users, :address, :text
  end
end
