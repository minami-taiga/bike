FactoryBot.define do
  factory :item do
    sequence(:bike_name) { |n| "bike_name#{n}"}
    sequence(:image_id) { Faker::Lorem.characters(number: 60) }
  end
end