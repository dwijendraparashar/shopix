class AddCustomerToProducts < ActiveRecord::Migration[6.0]
  def change
    add_column :products, :customer, :string
    add_column :products, :order_id, :integer
    add_column :products, :address_id, :integer
  end
end
