# == Schema Information
#
# Table name: blogs
#
#  id          :integer          not null, primary key
#  title       :string(100)      not null
#  date        :datetime         not null
#  content     :text(5000)       not null
#  num_likes   :integer
#  image       :binary
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  location_id :integer
#  user_id     :integer
#

require 'test_helper'

class BlogTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
