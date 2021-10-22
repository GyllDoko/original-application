require 'rails_helper'

RSpec.describe Category, type: :model do
describe "Category validation" do
  it "Not save without name" do
    category = Category.new(name: nil)
    expect(category).not_to be_valid
  end
  it " save with name" do
    category = Category.new(name: "e-commerce")
    expect(category).to be_valid
  end
  
end

end