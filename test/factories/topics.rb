# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :topic do
    user
    title "MyString"
    wysiwyg_body "<h3>H3</h3>"
  end
end
