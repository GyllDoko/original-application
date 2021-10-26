require 'rails_helper'

RSpec.describe Rating, type: :model do
    before do
        @user = User.create!(email: "example@user.co", password: "password")
        end
    describe "Like validations" do
        it "belong to an user and a product" do
          rating = Rating.new(user_id: nil, product_id: nil, note: 1)
          expect(rating).not_to be_valid 
        end
        it "belong to an product " do
        rating = Rating.new(user_id: @user.id, product_id: nil, note: 4)
          expect(rating).to be_valid 
        end
        
      end
end
