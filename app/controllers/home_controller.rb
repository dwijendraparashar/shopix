class HomeController < ApplicationController
  
  def index
  	if params[:search_key].present?
  		@categories = Category.all.where("lower(title) LIKE ?","%#{params[:search_key].downcase}%")
		  @products = Product.all.where("lower(title) LIKE ?","%#{params[:search_key].downcase}%").paginate(page: params[:page], per_page: 4)
	   else
  		@categories=Category.all
  		@products = Product.paginate(page: params[:page], per_page: 4)
  	end
  end

  def about
  end

  def privacy
  end
  
  def contact
  end

  def customercare
  end

  def job
  end

  def bsuppliers
  end

  def brequirements
  end

  def bcomplaints
  end

  def bfeedbacks
  end

  def sprofile
  end

  def spost
  end

  def sadvertise
  end

  def sconnect
  end

  def cbuy
  end

  def csection
  end

  def cfeedbacks
  end

 def cdiscount
 end


  def bsuppliers
  end

  def cfeedbacks
  end

  def cdiscount
  end 
end