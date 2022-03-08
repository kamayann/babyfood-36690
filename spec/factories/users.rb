FactoryBot.define do
  factory :user do
    nickname              { Faker::Name.initials(number: 2) }
    email                 {Faker::Internet.free_email}
    relationship_id       {Faker::Number.between(from: 2, to: 10)}
    password              {Faker::Internet.password(min_length: 6)}
    password_confirmation {password}
  end
end