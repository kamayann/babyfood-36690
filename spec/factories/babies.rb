FactoryBot.define do
  factory :baby do
    nickname       { Faker::Name.initials(number: 2) }
    birth_day      { Faker::Date.birthday}

    trait :with_user do
      after(:create) do |baby|
        user = FactoryBot.create(:user)
        create_list(:baby_user, 1, baby: baby, user: user)
      end
    end
  end
end