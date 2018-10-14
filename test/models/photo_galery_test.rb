# == Schema Information
#
# Table name: photo_galeries
#
#  id             :integer          not null, primary key
#  image          :string           not null
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  imageable_id   :integer
#  imageable_type :string
#  dog_id         :integer
#  blog_id        :integer
#  user_id        :integer
#

require 'test_helper'

class PhotoGaleryTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
