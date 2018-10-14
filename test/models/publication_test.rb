# == Schema Information
#
# Table name: publications
#
#  id           :integer          not null, primary key
#  num_comments :integer
#  num_likes    :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  user_id      :integer
#  dog_id       :integer
#

require 'test_helper'

class PublicationTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
