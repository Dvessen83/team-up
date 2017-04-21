FactoryGirl.define do
  factory :user do
    email    { Faker::Internet.email }
    password { Faker::Internet.password }
    name     { Faker::Name.first_name}
    admin    false

  end
end
