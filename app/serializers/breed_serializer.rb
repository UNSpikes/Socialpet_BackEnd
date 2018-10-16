class BreedSerializer < ActiveModel::Serializer
  attributes :id, :breed_type

  has_many :dogs
end
