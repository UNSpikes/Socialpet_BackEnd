class LocationSerializer < ActiveModel::Serializer
  attributes :id, :city, :longitud, :latitud

  has_one :dog
  has_one :blog
end
