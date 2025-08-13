FactoryBot.define do
  factory :user do
    nickname { 'suzuki' }
    email { Faker::Internet.email }
    password { 'test1234' }
    password_confirmation { password }
    first_name     { 'あ' }
    last_name     { 'あ' }
    first_name_kana    { 'カタ' }
    last_name_kana     { 'カタ' }
    birth_date             { '1956.10.10' }
  end
end

