class Location < ApplicationRecord
	validates :punto, :city, presence: true
end
