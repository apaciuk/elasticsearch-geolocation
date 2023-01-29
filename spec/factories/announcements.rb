FactoryBot.define do
  factory :announcement do
    published_at { "2023-01-29 14:43:43" }
    announcement_type { "MyString" }
    name { "MyString" }
    description { "MyText" }
  end
end
