FactoryBot.define do
  factory :comment do
    content        {'aaaa'}
    association :user
    association :post
  end
end