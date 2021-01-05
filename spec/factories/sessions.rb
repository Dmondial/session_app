FactoryBot.define do
  factory :session do
    room { Faker::Name.initials(number: 2) }
    sound_ids {["1","2"]}
    association :user
    association :sound
  end
end
