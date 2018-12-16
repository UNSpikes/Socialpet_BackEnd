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
	validates :name, :age, :sex, :description, :interests, presence: true
	validates :name, length: { maximum: 100, too_long:"Pueden haber unicamente %´{count} caracteres" }
	validates :age, length: { in: 1..3, too_long: "Se permiten máximo %´{count} caracteres" }
	validates :sex, length: { is: 1, too_long: "Se permiten máximo %´{count} caracteres" }
	validates :description, length: { maximum: 5000, too_long: "Se permiten máximo %´{count} caracteres" }
	validates :interests, length: { is: 1 ,too_long: "Se permiten máximo %´{count} caracteres" }
	belongs_to :user
    belongs_to :breed
    has_many :publications 
    has_many :photo_galery, as: :imageable
    belongs_to :location, optional: true
	has_many :likes
	has_many :certificados
	
	def self.items(p)
		paginate(page: p, per_page: 12)
	end

	#def get_owner()
	#	user.select(:id, :name, :last_name, :phone_number, :email)
	#end

	#def get_breed()
	#	breed.select(:id, :breed_type)
	#end

	def self.num_dogs_by_breed(breed_id)
		joins(:breed).where("breeds.id" => breed_id).count if breed_id.present?
	end

	def self.num_dogs_by_user(user_id)
		joins(:user).where("users.id" => user_id).count if user_id.present?
	end

end
