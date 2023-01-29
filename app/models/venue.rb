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
class Venue < ApplicationRecord
has_and_belongs_to_many :categories
geocoded_by :address
after_validation :geocode, if: ->(obj){ obj.address.present? and obj.address_changed? }


def distance location
 Geocoder::Calculations.distance_between([latitude, longitude], [location['lat'], location['lng']])
end



