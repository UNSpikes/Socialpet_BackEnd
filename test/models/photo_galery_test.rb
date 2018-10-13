# == Schema Information
#
# Table name: photo_galeries
#
#  id             :integer          not null, primary key
#  image          :binary
#  imageable_type :string
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  imageable_id   :integer
#

require 'test_helper'

class PhotoGaleryTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
