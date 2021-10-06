class HomepageController < ApplicationController
  before_action :authenticate_user!, only: [:app, :user]
  def home
    
  end
  def app

  end
  def user
    render json: current_user
  end
end
