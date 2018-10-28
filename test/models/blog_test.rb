# == Schema Information
#
# Table name: blogs
#
#  id          :integer          not null, primary key
#  content     :text(5000)       not null
#  date        :datetime         not null
#  image       :binary
#  num_likes   :integer
#  title       :string(100)      not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  location_id :integer
#  user_id     :integer
#
# Indexes
#
#  index_blogs_on_location_id  (location_id)
#  index_blogs_on_user_id      (user_id)
#

require 'test_helper'

class BlogTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
