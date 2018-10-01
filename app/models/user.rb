class User < ApplicationRecord

	validates :name, :last_name,:phone_number, :password, :email, presence: true
	validates :name, :last_name, length: { maximum: 100, too_long:"Pueden haber unicamente %´{count} caracteres" }
	validates :age, length: { in: 1..3,too_long: "Se permiten máximo %´{count} caracteres" }
	validates :phone_number, length: { maximum: 20, too_long: "Se permiten máximo %´{count} caracteres" }
	validates :additional_info, length: { maximum: 5000, too_long: "Se permiten máximo %´{count} caracteres" }
	validates :country length: { maximum: 56, too_long: "Se permiten máximo %´{count} caracteres" }
	validates :city, length: { maximum: 85, too_long: "Se permiten máximo %´{count} caracteres" }
	validates :password, length: { in: 6..16, wrong_lenght: "Se permiten máximo %´{count} caracteres" }
	validates :email, length: { maximum: 100, too_long: "Se permiten máximo %´{count} caracteres" }
	has_many :dogs
    has_many :blogs
	has_many :comments
	has_one :preference
end
