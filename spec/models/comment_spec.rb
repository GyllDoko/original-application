require 'rails_helper'

RSpec.describe Comment, type: :model do
  describe "Comment validations" do
    it "belong to an user and a product" do
      comment = Comment.new(user_id: nil, product_id: nil, description: "something")
      expect(comment).not_to be_valid 
    end
    it "belong to an product " do
      @user = User.create!(email: "example@user.co", password: "password")
      comment = Comment.new(user_id: @user.id, product_id: nil, description: "something")
      expect(comment).not_to be_valid 
    end
    
  end
  
end
