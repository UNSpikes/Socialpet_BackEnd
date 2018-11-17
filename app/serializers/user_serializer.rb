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
#  password_digest :string(16)
#  phone_number    :string(20)
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
