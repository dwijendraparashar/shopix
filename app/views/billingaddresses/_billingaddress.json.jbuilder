json.extract! billingaddress, :id, :name, :gender, :phone, :email, :addressline1, :addressline2, :addressline3, :city, :state, :country, :zipcode, :order_id, :user_id, :created_at, :updated_at
json.url billingaddress_url(billingaddress, format: :json)
