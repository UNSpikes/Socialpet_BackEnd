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
end
