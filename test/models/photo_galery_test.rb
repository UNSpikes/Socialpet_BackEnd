# == Schema Information
#
# Table name: photo_galeries
#
#  id             :integer          not null, primary key
#  image          :string           not null
#  imageable_type :string
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  blog_id        :integer
#  dog_id         :integer
#  imageable_id   :integer
#  user_id        :integer
#
# Indexes
#
#  index_photo_galeries_on_blog_id  (blog_id)
#  index_photo_galeries_on_dog_id   (dog_id)
#  index_photo_galeries_on_user_id  (user_id)
#

require 'test_helper'

class PhotoGaleryTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
