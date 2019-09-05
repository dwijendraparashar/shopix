json.extract! bilingaddress, :id, :name, :gender, :phone, :email, :addressline1, :addressline2, :addressline3, :city, :state, :country, :zipcode, :order_id, :user_id, :created_at, :updated_at
json.url bilingaddress_url(bilingaddress, format: :json)
