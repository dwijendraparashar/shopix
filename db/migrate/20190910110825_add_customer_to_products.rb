class AddCustomerToProducts < ActiveRecord::Migration[6.0]
  def change
    add_column :orders, :customer, :string
    add_column :orders, :billingaddress_id, :integer
    add_column :orders, :first_name, :string
    add_column :orders, :last_name, :string
    add_column :orders, :email, :string
  end
end
