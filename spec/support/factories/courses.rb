# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :cours, :class => 'Course' do
    name "MyString"
    description "MyString"
    status 1
  end
end
