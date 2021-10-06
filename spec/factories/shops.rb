FactoryBot.define do
  factory :shop do
    name { "MyString" }
    logo { "MyString" }
    adress { "MyString" }
    contact { 1 }
    user_id { nil }
  end
end
