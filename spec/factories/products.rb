FactoryBot.define do
  factory :product do
    name { "MyString" }
    price { 1.5 }
    image { "MyString" }
    category_id { nil }
    desccription { "MyText" }
    shop_id { nil }
  end
end
