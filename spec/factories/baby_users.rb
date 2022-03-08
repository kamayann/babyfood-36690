FactoryBot.define do
  factory :baby_user do
    association :user
    association :baby
  end
end