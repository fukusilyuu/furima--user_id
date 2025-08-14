FactoryBot.define do
  factory :user do
    nickname { 'suzuki' }
    email { Faker::Internet.email }
    password { 'test1234' }
    password_confirmation { password }
    firstname_kanji    { 'あ' }
    lastname_kanji    { 'あ' }
    firstname_katakana    { 'カタ' }
    lastname_katakana     { 'カタ' }
    birth_date             { '1956.10.10' }
  end
end

