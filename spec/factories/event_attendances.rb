FactoryBot.define do
  factory :event_attendance do
    association :user, factory: :user
    association :event, factory: :event
  end
end
