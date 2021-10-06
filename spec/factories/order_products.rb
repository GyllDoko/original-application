FactoryBot.define do
  factory :order_product do
    quantity { 1 }
    product { nil }
    order { nil }
  end
end
