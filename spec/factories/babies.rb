FactoryBot.define do
  factory :baby do
    nickname       { Faker::Name.initials(number: 2) }
    birth_day      { Faker::Date.birthday}
  end
end