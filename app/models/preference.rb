class Preference < ApplicationRecord
	validates :privacy, :language,:max_distance, presence: true
	validates :language, length: { maximum: 20, too_long:"Pueden haber unicamente %´{count} caracteres" }
	validates :max_distance, length: { maximum: 4,too_long: "Se permiten máximo %´{count} caracteres" }
end
