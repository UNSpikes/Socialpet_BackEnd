# == Schema Information
#
# Table name: dogs
#
#  id          :integer          not null, primary key
#  age         :integer          not null
#  description :text(5000)       not null
#  interests   :integer          not null
#  name        :string(100)      not null
#  sex         :string(1)        not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'test_helper'

class DogTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
