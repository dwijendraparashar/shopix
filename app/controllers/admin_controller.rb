class AdminController < ApplicationController
  layout 'admin'
  before_action :authentication_admin!
 
  def dashboard
  end
end