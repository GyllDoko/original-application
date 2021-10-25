class HomepageController < ApplicationController
  before_action :authenticate_user!, only: [:home]
  def generate_url(url, params = {})
    uri = URI(url)
    uri.query = params.to_query
    uri.to_s
  end
  def home
    redirect_to generate_url('https://dive-original-app-front.herokuapp.com/login')
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
