# == Schema Information
#
# Table name: locations
#
#  id         :integer          not null, primary key
#  city       :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  longitud   :string(20)       not null
#  latitud    :string(20)       not null
#

require 'test_helper'

class LocationTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
