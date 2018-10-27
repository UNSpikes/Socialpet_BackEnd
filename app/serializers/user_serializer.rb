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

class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :last_name, :age, :phone_number, :additional_info, :country, :city, :password, :email

  has_many :dogs
  has_many :blogs
	has_many :comments
	has_one :preference
end
