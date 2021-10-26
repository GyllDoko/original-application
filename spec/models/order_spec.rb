require 'rails_helper'

RSpec.describe Order, type: :model do
    before do
        @user = User.create!(email: "example@user.co", password: "password")
        end
    describe "Order spec" do
        it "register order" do
            order = Order.new(user_id: @user.id, status: true)
            expect(order).to be_valid 
        end
        it " not register without user order" do
            order = Order.new( status: true)
            expect(order).not_to be_valid 
        end
        
    end
    
end
