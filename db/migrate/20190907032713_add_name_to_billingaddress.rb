class AddNameToBillingaddress < ActiveRecord::Migration[6.0]
  def change
    add_column :billingaddresses, :first_name, :string
    add_column :billingaddresses, :last_name, :string
  end
end
