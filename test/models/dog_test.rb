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
#  breed_id    :integer
#  location_id :integer
#  user_id     :integer          not null
#
# Indexes
#
#  index_dogs_on_breed_id     (breed_id)
#  index_dogs_on_location_id  (location_id)
#  index_dogs_on_user_id      (user_id)
#

require 'test_helper'

class DogTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
