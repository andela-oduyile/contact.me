FactoryGirl.define do
  factory :contact do
    first_name { Faker::Name.first_name }
    last_name { Faker::Name.last_name }
    email { Faker::Internet.email }
    company { Faker::Company.name }
    job_title { Faker::Job.title }
    date_of_birth "2017-10-16"
    address { Faker::Address.street_address }
    after(:build) do |contact|
      contact.user = create(:contact)
    end
  end
end
