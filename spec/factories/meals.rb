FactoryBot.define do
  factory :meal do
    food          {Faker::Lorem.sentence}
    meal_date     {Faker::Date.backward}
    meal_time_id  {Faker::Number.between(from: 2, to: 8)}

    association :baby
  end
end