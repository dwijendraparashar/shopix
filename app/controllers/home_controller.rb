class HomeController < ApplicationController
  
  def index
  	@categories=Category.all
  	@products = Product.paginate(page: params[:page])
  end

  def user_guidelines
  end

end