# == Schema Information
#
# Table name: publications
#
#  id           :integer          not null, primary key
#  num_comments :integer
#  num_likes    :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  dog_id       :integer
#  user_id      :integer
#
# Indexes
#
#  index_publications_on_dog_id   (dog_id)
#  index_publications_on_user_id  (user_id)
#

require 'test_helper'

class PublicationTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
