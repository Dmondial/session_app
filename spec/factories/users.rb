FactoryBot.define do
  factory :user do
    name              { Faker::Name.initials(number: 2) }
    profile           { Faker::Lorem.sentence }
    email                 { Faker::Internet.free_email }
    password = 'abc123'
    password              { password }
    password_confirmation { password }
  end
end
