require 'rails_helper'

RSpec.describe Card, type: :model do 
  before do
    @user = User.create!(email: "example@user.co", password: "password")
    end
    it "must be a user card "do
        card = Card.new(number: 2222222, cvv: 254, deadline: DateTime.now, owner_first_name: "Gyll-christ", owner_last_name: "DOKO", user_id: @user.id)
        expect(card).to be_valid 
    end
    it "must be a user card number"do
    card = Card.new(number: 2222222222, cvv: 254, deadline: DateTime.now, owner_first_name: "Gyll-christ", owner_last_name: "DOKO", user_id: @user.id)
    expect(card).to be_valid 
end
it "must be a user card number"do
card = Card.new(number: 2222222222, cvv: 254, deadline: DateTime.now, owner_first_name: "Gyll-christ", owner_last_name: "DOKO")
expect(card).not_to be_valid 
end
  end
  