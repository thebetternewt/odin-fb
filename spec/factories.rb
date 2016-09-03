FactoryGirl.define do
  factory :user do
    name "Chris Example"
    email { Faker::Internet.email }
    password "password"
    password_confirmation "password"
    confirmed_at Date.today
  end
end
