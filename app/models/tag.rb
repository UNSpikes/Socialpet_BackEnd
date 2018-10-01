class Tag < ApplicationRecord
	validates :tag_name, presence: true
	validates :tag_name, length: { maximum: 15, too_long:"Pueden haber unicamente %´{count} caracteres" }
end
