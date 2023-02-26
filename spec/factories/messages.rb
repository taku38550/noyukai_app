FactoryBot.define do
  factory :message do
    content  {'aaaa'}
    association :user
    association :room
  end
end