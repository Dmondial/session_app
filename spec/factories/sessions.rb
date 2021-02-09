# FactoryBot.define do
#   factory :session do
#     room { Faker::Name.initials(number: 2) }
#     @sound = FactoryBot.create(:sound)
#     @another_sound = FactoryBot.create(:sound)
#     sound_ids { [@sound.id , @another_sound.id] }

#     association :user
#     association :sound
#   end
# end
