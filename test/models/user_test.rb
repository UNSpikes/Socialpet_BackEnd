# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  name            :string(100)      not null
#  last_name       :string(100)      not null
#  age             :integer
#  phone_number    :string(20)       not null
#  additional_info :text(5000)
#  country         :string(56)
#  city            :string(85)
#  password        :string(16)       not null
#  email           :string(100)      not null
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
