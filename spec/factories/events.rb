FactoryBot.define do
  factory :event do
    association :creator, factory: :user

    title { Faker::Artist.name }
    location { Faker::Address.full_address }
    description { Faker::Dessert.flavor }
    date { Faker::Time.forward(days: 23, period: :morning) }
  end
end
