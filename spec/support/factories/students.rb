# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :student do
    sequence(:name) { |n| "Name #{n}" }
    sequence(:register_number) { |n| "Register #{n}" }
    sequence(:status) { |n| n }
  end
end
