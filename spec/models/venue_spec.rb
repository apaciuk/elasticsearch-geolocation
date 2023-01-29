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
require 'rails_helper'

RSpec.describe Venue, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
