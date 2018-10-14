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

class Location < ApplicationRecord
	validates :city, presence: true
	validates :latitud, presence: true, length: {maximum: 20}
	validates :longitud, presence: true, length: {maximum: 20}
	
	has_one :dog
    has_one :blog
end
