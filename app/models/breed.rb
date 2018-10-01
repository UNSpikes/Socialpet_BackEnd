class Breed < ApplicationRecord
	validates :bread_type, presence: true
	validates :bread_type, length: { maximum: 30, too_long:"Pueden haber unicamente %´{count} caracteres" }

end
