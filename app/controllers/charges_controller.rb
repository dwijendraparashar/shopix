class ChargesController < ApplicationController
	def new
		product_ids = current_user.carts.map(&:product_id)
    	@products = Product.where(id: product_ids)
	end

	def create
		product_ids = current_user.carts.map(&:product_id)
    	@products = Product.where(id: product_ids)
	  # Amount in cents
	  @amount = 500

	  customer = Stripe::Customer.create({
	    email: params[:stripeEmail],
	    source: params[:stripeToken],
	  })

	  charge = Stripe::Charge.create({
	    customer: customer.id,
	    amount: @amount,
	    description: 'Rails Stripe customer',
	    currency: 'usd',
	  })
	  @user = current_user
	  UserMailer.welcome_email(@user).deliver_now
	  
	rescue Stripe::CardError => e
	  flash[:error] = e.message
	  redirect_to new_charge_path
	end
	# Order.create()

	def show
	end

end
