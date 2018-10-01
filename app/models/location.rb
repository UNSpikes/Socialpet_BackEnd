class Location < ApplicationRecord
	validates :punto, :city, presence: true
	has_one :dog
    has_one :blog
end
