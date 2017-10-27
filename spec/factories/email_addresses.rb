FactoryGirl.define do
  factory :email_address do
    email { Faker::Internet.email }
    type "work"
    after(:build) do |email_address|
      email_address.contact = create(:contact)
    end
  end
end
