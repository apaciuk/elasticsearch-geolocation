# == Schema Information
#
# Table name: venues
#
#  id         :uuid             not null, primary key
#  address    :string           default(""), not null
#  country    :string           default(""), not null
#  latitude   :float            default(0.0), not null
#  longitude  :float            default(0.0), not null
#  name       :string           default(""), not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
FactoryBot.define do
  factory :venue do
    name { "MyString" }
    address { "MyString" }
    country { "MyString" }
    latitude { 1.5 }
    longitude { 1.5 }
  end
end
