FactoryBot.define do
  factory :user do
    nickname              {'test'}
    email                 {'test@example'}
    relationship_id       {2}
    password              {'000000'}
    password_confirmation {password}
  end
end