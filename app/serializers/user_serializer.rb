class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :last_name, :age, :phone_number, :additional_info, :country, :city, :password, :email

  has_many :dogs
  has_many :blogs
	has_many :comments
	has_one :preference
end
