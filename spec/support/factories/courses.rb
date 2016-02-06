# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :course, :class => 'Course' do
    sequence(:name) { |n| "Course #{n}"}
    sequence(:description) { |n| "Description #{n}" }
    sequence(:status) { |n| "#{n}"}
  end
end
