FactoryBot.define do
  factory :session do
    room {Faker::Name.last_name}
    sound_ids {1}
    
  end
end