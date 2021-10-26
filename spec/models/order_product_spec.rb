require 'rails_helper'

RSpec.describe OrderProduct, type: :model do
    before do
        @user = User.create!(email: "example@user.co", password: "password")
        end
    describe "Order product spec" do
        it "register order" do
            @order = Order.create!(user_id: @user.id, status: true)
            order_product = OrderProduct.new(order_id: @order.id, quantity: 2)
            expect(order_product).to be_valid 
        end
        it " not register without  order" do
            order = Order.new( status: true)
            order_product = OrderProduct.new(quantity: 2)
            expect(order_product).not_to be_valid 
        end
        
    end
end
