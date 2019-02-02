# == Schema Information
#
# Table name: breeds
#
#  id         :integer          not null, primary key
#  breed_type :string(30)       not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Breed < ApplicationRecord
	validates :breed_type, presence: true
	validates :breed_type, length: { maximum: 30, too_long:"Pueden haber unicamente %´{count} caracteres" }
	has_many :dogs

	def self.num_dogs_by_all_breeds()
		#joins(:dogs)
		Breed.find_by_sql("SELECT breeds.breed_type, dogs.name FROM breeds INNER JOIN dogs ON dogs.breed_id = breeds.id")
	end
end
