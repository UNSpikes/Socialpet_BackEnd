class Dog < ApplicationRecord
	validates :name, :age,:sex, :description, :interests, presence: true
	validates :name, length: { maximum: 100, too_long:"Pueden haber unicamente %´{count} caracteres" }
	validates :age, length: { in: 1..3, too_long: "Se permiten máximo %´{count} caracteres" }
	validates :sex, length: { is: 1, too_long: "Se permiten máximo %´{count} caracteres" }
	validates :description, length: { maximum: 5000, too_long: "Se permiten máximo %´{count} caracteres" }
	validates :interests, length: { is: 1 ,too_long: "Se permiten máximo %´{count} caracteres" }
	belongs_to :user
    belongs_to :breed
    has_many :publications 
    has_one :photo_galery
    belongs_to :location, optional: true
    has_many :likes
end
