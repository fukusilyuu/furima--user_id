FactoryBot.define do
  factory :item do
    association :user
    name { Faker::Name.initials(number: 2) }
    price { 1450 }
    explanation { 'あア' }
    genre_id { 9 }
    quality_id { 1 }
    payment_id { 5 }
    prefecture_id { 3 }
    days_id { 3 }
    after(:build) do |item|
      item.image.attach(io: File.open('public/test_image.png'), filename: 'test_image.png')
    end
  end
end