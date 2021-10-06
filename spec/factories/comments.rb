FactoryBot.define do
  factory :comment do
    user { nil }
    product { nil }
    description { "MyText" }
  end
end
