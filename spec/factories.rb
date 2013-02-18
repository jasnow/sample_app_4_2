# By using the symbol ':user', we get FactoryGirl to simulate the User model.

FactoryGirl.define do
  factory :user do
    name                  "Al Snow"
    email                 "jasnow@hotmail.com"
    password              "foobar"
    password_confirmation "foobar"
  end
end

FactoryGirl.define do
  factory :micropost do
    content     "Foo bar"
    association :user
  end
end

FactoryGirl.define do
  sequence :email do |n|
    "person-#{n}@example.com"
  end
end

