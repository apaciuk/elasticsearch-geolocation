# == Schema Information
#
# Table name: services
#
#  id                  :uuid             not null, primary key
#  access_token        :string
#  access_token_secret :string
#  auth                :text
#  expires_at          :datetime
#  provider            :string
#  refresh_token       :string
#  uid                 :string
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#  user_id             :uuid             not null
#
# Indexes
#
#  index_services_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#
FactoryBot.define do
  factory :service do
    user { nil }
    provider { "MyString" }
    uid { "MyString" }
    access_token { "MyString" }
    access_token_secret { "MyString" }
    refresh_token { "MyString" }
    expires_at { "2023-01-29 14:43:44" }
    auth { "MyText" }
  end
end
