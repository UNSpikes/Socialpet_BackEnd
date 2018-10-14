class Location < ApplicationRecord
	validates :city, presence: true
	validates :latitud, presence: true, length: {maximum: 20}
	validates :longitud, presence: true, length: {maximum: 20}
	
	has_one :dog
    has_one :blog
end
