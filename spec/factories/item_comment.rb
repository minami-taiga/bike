FactoryBot.define do
  factory :item_comment do
    sequence(:comment) { |n| "comment#{n}"}
  end
end