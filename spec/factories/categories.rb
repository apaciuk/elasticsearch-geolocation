# == Schema Information
#
# Table name: categories
#
#  id         :uuid             not null, primary key
#  name       :string           default(""), not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  venue_id   :uuid             not null
#
# Indexes
#
#  index_categories_on_venue_id  (venue_id)
#
# Foreign Keys
#
#  fk_rails_...  (venue_id => venues.id)
#
FactoryBot.define do
  factory :category do
    name { "MyString" }
    venue { nil }
  end
end
