FactoryBot.define do
  factory :card do
    number { 1 }
    cvv { 1 }
    deadline { "2021-10-04" }
    owner_first_name { "MyString" }
    owner_last_name { "MyString" }
    user { nil }
  end
end
