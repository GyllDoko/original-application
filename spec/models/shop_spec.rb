require 'rails_helper'

RSpec.describe Shop, type: :model do

  describe "Create a shop" do
    context "shop model validation" do
      it "add shop to database" do
        @user = User.create!(email: Faker::Internet.email, password: "password")
        shop = Shop.new(name: Faker::Commerce.vendor, logo_tmp: Faker::LoremPixel.image(category: 'business', text: "Market place"), adress: Faker::Address.full_address, contact: Faker::PhoneNumber.cell_phone_with_country_code, user_id: @user.id)

        expect(shop).to be_valid 
      end
      it "not add shop to database without user" do
        shop = Shop.new(name: Faker::Commerce.vendor, logo_tmp: Faker::LoremPixel.image(category: 'business', text: "Market place"), adress: Faker::Address.full_address, contact: Faker::PhoneNumber.cell_phone_with_country_code, user_id: nil)

        expect(shop).not_to be_valid 
      end
      it "not add shop to database without shop name" do
        shop = Shop.new(name: nil, logo_tmp: Faker::LoremPixel.image(category: 'business', text: "Market place"), adress: Faker::Address.full_address, contact: Faker::PhoneNumber.cell_phone_with_country_code, user_id: nil)

        expect(shop).not_to be_valid 
      end
      it "not add shop to database without shop adress" do
        shop = Shop.new(name: nil, logo_tmp: Faker::LoremPixel.image(category: 'business', text: "Market place"), adress: nil, contact: Faker::PhoneNumber.cell_phone_with_country_code, user_id: nil)

        expect(shop).not_to be_valid 
      end
      it "not add shop to database without shop phone number" do
        shop = Shop.new(name: nil, logo_tmp: Faker::LoremPixel.image(category: 'business', text: "Market place"), adress: nil, contact: nil, user_id: nil)

        expect(shop).not_to be_valid 
      end
    end
  end
  
end
