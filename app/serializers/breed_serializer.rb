# == Schema Information
#
# Table name: breeds
#
#  id         :integer          not null, primary key
#  breed_type :string(30)       not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class BreedSerializer < ActiveModel::Serializer
  attributes :id, :breed_type

  has_many :dogs
end
