# == Schema Information
#
# Table name: dogs
#
#  id          :integer          not null, primary key
#  name        :string(100)      not null
#  age         :integer          not null
#  sex         :string(1)        not null
#  description :text(5000)       not null
#  interests   :integer          not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  user_id     :integer
#  breed_id    :integer
#  location_id :integer
#

require 'test_helper'

class DogTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
