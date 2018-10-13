# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  additional_info :text(5000)
#  age             :integer
#  city            :string(85)
#  country         :string(56)
#  email           :string(100)      not null
#  last_name       :string(100)      not null
#  name            :string(100)      not null
#  password        :string(16)       not null
#  phone_number    :string(20)       not null
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
