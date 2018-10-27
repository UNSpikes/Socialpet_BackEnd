# == Schema Information
#
# Table name: locations
#
#  id         :integer          not null, primary key
#  city       :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  longitud   :string(20)       not null
#  latitud    :string(20)       not null
#

class LocationSerializer < ActiveModel::Serializer
  attributes :id, :city, :longitud, :latitud

  has_one :dog
  has_one :blog
end
