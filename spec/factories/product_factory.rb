
FactoryBot.define do
  factory :product do
    sequence(:title) { |n| "Best product ever (#{n})" }
    sequence(:description) { |n| "Best description ever (#{n})" }
    color { 'green' }
    price { rand(10..100) }
    vendor { 'Test Vendor' }
  end
end