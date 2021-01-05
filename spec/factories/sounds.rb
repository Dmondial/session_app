FactoryBot.define do
  factory :sound do
    title {Faker::Lorem.sentence}
    explain {Faker::Lorem.sentence}
    

    file { Rack::Test::UploadedFile.new(File.join(Rails.root, 'spec/fixtures/sample.mp3')) }

    association :user
  end



end
