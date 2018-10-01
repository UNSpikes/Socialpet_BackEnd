class Blog < ApplicationRecord
	validates :title, :content, :date presence: true
	validates :title, length: { maximum: 100, too_long:"Pueden haber unicamente %´{count} caracteres" }
	validates :content, length: { maximum: 5000, too_long: "Se permiten máximo %´{count} caracteres" }
end
