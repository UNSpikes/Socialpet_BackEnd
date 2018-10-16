# == Schema Information
#
# Table name: dogs
#
#  id          :integer          not null, primary key
#  age         :integer          not null
#  description :text(5000)       not null
#  interests   :integer          not null
#  name        :string(100)      not null
#  sex         :string(1)        not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  breed_id    :integer
#  location_id :integer
#  user_id     :integer
#
# Indexes
#
#  index_dogs_on_breed_id     (breed_id)
#  index_dogs_on_location_id  (location_id)
#  index_dogs_on_user_id      (user_id)
#

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
