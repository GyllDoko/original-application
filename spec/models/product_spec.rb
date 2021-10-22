require 'rails_helper'

RSpec.describe Product, type: :model do
  describe "Add a new product" do
    context "every things is described" do
      it "add product" do
        @user = User.create!(email: Faker::Internet.email, password: "password")
        @category = Category.create!(name: Faker::Commerce.department(max: 1))
        @shop = Shop.create!(name: Faker::Commerce.vendor, logo_tmp: Faker::LoremPixel.image(category: 'business', text: "Market place"), adress: Faker::Address.full_address, contact: Faker::PhoneNumber.cell_phone_with_country_code, user_id: @user.id)
        @product = Product.new(name: Faker::Commerce.product_name, price: Faker::Number.number(digits: 3) * 100, image_tmp: "product_images.sample", desccription: Faker::Lorem.paragraph(sentence_count: 3), shop_id: @shop.id, category_id: @category.id)

        expect(@product).to be_valid 
      end
      it "not add without category" do
        @user = User.create!(email: Faker::Internet.email, password: "password")
        @shop = Shop.create!(name: Faker::Commerce.vendor, logo_tmp: Faker::LoremPixel.image(category: 'business', text: "Market place"), adress: Faker::Address.full_address, contact: Faker::PhoneNumber.cell_phone_with_country_code, user_id: @user.id)
        @product = Product.new(name: Faker::Commerce.product_name, price: Faker::Number.number(digits: 3) * 100, image_tmp: "product_images.sample", desccription: Faker::Lorem.paragraph(sentence_count: 3), shop_id: @shop.id, category_id: nil)

        expect(@product).not_to be_valid 
      end
      it "not add without shop" do
        @product = Product.new(name: Faker::Commerce.product_name, price: Faker::Number.number(digits: 3) * 100, image_tmp: "product_images.sample", desccription: Faker::Lorem.paragraph(sentence_count: 3), shop_id: nil, category_id: nil)

        expect(@product).not_to be_valid 
      end
      it "not add without name" do
        @product = Product.new(name: nil, price: Faker::Number.number(digits: 3) * 100, image_tmp: "product_images.sample", desccription: Faker::Lorem.paragraph(sentence_count: 3), shop_id: nil, category_id: nil)

        expect(@product).not_to be_valid 
      end
      it "not add without price" do
        @product = Product.new(name: nil, price: nil, image_tmp: "product_images.sample", desccription: Faker::Lorem.paragraph(sentence_count: 3), shop_id: nil, category_id: nil)

        expect(@product).not_to be_valid 
      end
      it "not add without description" do
        @product = Product.new(name: nil, price: nil, image_tmp: "product_images.sample", desccription: nil, shop_id: nil, category_id: nil)

        expect(@product).not_to be_valid 
      end
      
    end
  end
  
end
