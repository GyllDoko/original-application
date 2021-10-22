require 'rails_helper'

RSpec.describe Adress, type: :model do
  context "register an adress" do
    before do
    @user = User.create!(email: "example@user.co", password: "password")
    end
    it "must be a float number" do
      adress = Adress.new(longitude: 99.0, latitude: 58.7, user_id: @user.id)
      expect(adress).to be_valid 
    end
    it "raise error on user not provided" do
      adress = Adress.new(longitude: 99.0, latitude: 58.7)
      expect(adress).not_to be_valid 
    end
    it "raise error on one of both not describe" do
      adress = Adress.new(longitude: 99.0,  user_id: @user.id)
      expect(adress).not_to be_valid 
    end
  end

end
