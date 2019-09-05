class CreateBillingaddresses < ActiveRecord::Migration[6.0]
  def change
    create_table :billingaddresses do |t|
      t.string :name
      t.string :gender
      t.string :phone
      t.string :email
      t.text :addressline1
      t.text :addressline2
      t.text :addressline3
      t.string :city
      t.string :state
      t.string :country
      t.string :zipcode
      t.integer :order_id
      t.integer :user_id

      t.timestamps
    end
  end
end
