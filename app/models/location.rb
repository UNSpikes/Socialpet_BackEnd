# == Schema Information
#
# Table name: locations
#
#  id         :integer          not null, primary key
#  city       :string           not null
#  latitud    :string(20)       not null
#  longitud   :string(20)       not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Location < ApplicationRecord
	validates :city, presence: true
	validates :latitude, presence: true
	validates :longitude, presence: true
	
	has_one :dog
    has_one :blog
end
