FactoryBot.define do
  factory :order_address do
    postal_code { '123-4567' }
    city { '横浜市緑区' }
    prefecture_id { 2 }
    house_number { '青山1-1-1' }
    building_name { '柳ビル103' }
    phone_number { '09012345678' }
    token { Faker::Internet.password(min_length: 20, max_length: 30) }
    user_id { 2 }
    item_id { 2 }
    
  end
end
