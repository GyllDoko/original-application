FactoryBot.define do
  factory :order do
    user { nil }
    status { false }
    total_price { 1.5 }
  end
end
