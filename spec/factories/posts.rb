FactoryBot.define do
  factory :post do
    title { Faker::Lorem.word }
    url { Faker::Internet.url }
    created_at { Faker::Date.backward(14) }
  end
end