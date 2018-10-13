# == Schema Information
#
# Table name: preferences
#
#  id           :integer          not null, primary key
#  language     :string(20)       not null
#  max_distance :integer          not null
#  privacy      :boolean          not null
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

require 'test_helper'

class PreferenceTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
