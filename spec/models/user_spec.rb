require 'rails_helper'

RSpec.describe User, type: :model do
  describe "User Registration" do
    context "Registration without one attributes " do
      it "Not register without email" do
        user = User.new(email: nil, password: "password")
        expect(user).not_to be_valid
      end
      it "Not register without password" do
        user = User.new(email: "example@test.co", password: nil)
        expect(user).not_to be_valid
      end
      it "Not register with bad email" do
        user = User.new(email: "example.co", password: 'password')
        expect(user).not_to be_valid
      end

    end
    context "Ragistrations must success" do
      it "register user with email and password" do
        user = User.new(email: "example@test.co", password: "password")
        expect(user).to be_valid
      end
      it "register user with email and password and first_name" do
        user = User.new(email: "example@test.co", password: "password", first_name: "test")
        expect(user).to be_valid
      end
      it "register user with email , password , first_name and last_name" do
        user = User.new(email: "example@test.co", password: "password", first_name: "test", last_name: "user_lastname")
        expect(user).to be_valid
      end
      it "register user with email , password , first_name , last_name and phone_number" do
        user = User.new(email: "example@test.co", password: "password", first_name: "test", last_name: "user_lastname", phone_number: 66000000)
        expect(user).to be_valid
      end
      
    end
    
  end
  


end

