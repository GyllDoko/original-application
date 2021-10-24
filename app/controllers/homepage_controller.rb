class HomepageController < ApplicationController
  before_action :authenticate_user!, only: [:home]
  def home
    
  end
  def guest_admin
    @user =  User.find_by(email: "admin_guess@marketplace.com")
    unless @user
       @user = User.create!(email: "admin_guess@marketplace.com", password: "password", is_admin: true)
    end
    
    sign_in @user
    redirect_to rails_admin_path
  end
  
end
