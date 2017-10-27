FactoryGirl.define do
  factory :phone_number do
    number { Faker::PhoneNumber.phone_number }
    type "work"
    after(:build) do |phone_number|
      phone_number.contact = create(:contact)
    end
  end
end
