class Breed < ApplicationRecord
	validates :breed_type, presence: true
	validates :breed_type, length: { maximum: 30, too_long:"Pueden haber unicamente %´{count} caracteres" }
	has_many :dogs
end
