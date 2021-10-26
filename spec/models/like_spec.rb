require 'rails_helper'

RSpec.describe Like, type: :model do
    before do
        @user = User.create!(email: "example@user.co", password: "password")
        end
    describe "Like validations" do
        it "belong to an user and a product" do
          like = Like.new(user_id: nil, product_id: nil, value: 1)
          expect(like).not_to be_valid 
        end
        it "belong to an product " do
        like = Like.new(user_id: @user.id, product_id: nil, value: 1)
          expect(like).to be_valid 
        end
        
      end
      
end
