# == Schema Information
#
# Table name: likes
#
#  id          :integer          not null, primary key
#  id_dog2     :integer          not null
#  like_status :boolean          not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  dog_id      :integer
#  match_id    :integer
#  user_id     :integer
#
# Indexes
#
#  index_likes_on_dog_id    (dog_id)
#  index_likes_on_match_id  (match_id)
#  index_likes_on_user_id   (user_id)
#

require 'test_helper'

class LikeTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
