FactoryGirl.define do
  factory :user do
    name { Faker::Name.name }
    phone_number { Faker::PhoneNumber.phone_number }
    email { Faker::Internet.email }
    password_digest { Faker::Crypto.sha256 }
  end
end
