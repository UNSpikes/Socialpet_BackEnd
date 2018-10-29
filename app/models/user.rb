# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  additional_info :text(5000)
#  age             :integer
#  city            :string(85)
#  country         :string(56)
#  email           :string(100)      not null
#  last_name       :string(100)      not null
#  name            :string(100)      not null
#  password        :string(16)       not null
#  password_digest :string
#  phone_number    :string(20)       not null
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class User < ApplicationRecord

	has_secure_password

	validates :name, :last_name,:phone_number, :password, :email, presence: true
	validates :name, :last_name, length: { maximum: 100, too_long:"Pueden haber unicamente %´{count} caracteres" }
	validates :age, length: { in: 1..3,too_long: "Se permiten máximo %´{count} caracteres" }
	validates :phone_number, length: { maximum: 20, too_long: "Se permiten máximo %´{count} caracteres" }
	validates :additional_info, length: { maximum: 5000, too_long: "Se permiten máximo %´{count} caracteres" }
	validates :country, length: { maximum: 56, too_long: "Se permiten máximo %´{count} caracteres" }
	validates :city, length: { maximum: 85, too_long: "Se permiten máximo %´{count} caracteres" }
	validates :password, length: { in: 6..16, wrong_lenght: "Se permiten máximo %´{count} caracteres" }
	validates :email, length: { maximum: 100, too_long: "Se permiten máximo %´{count} caracteres" }
	has_many :dogs
    has_many :blogs
	has_many :comments
	has_one :preference

	def self.items(p, per_p)
		paginate(page: p, per_page: per_p)
	end

	def get_dogs()
		dogs.select(:id, :name, :sex)
	end

	def get_blogs()
		blogs.select(:id, :title, :image)
	end
	  
	def self.search_by_name(keywords)
		search = "upper(name) LIKE ? or upper(last_name) LIKE ? "
		search += "or upper(concat(name, ' ', last_name)) LIKE ? "
		keywords = "%#{keywords}%"
		where(search, keywords, keywords, keywords)
		  .order(name: :asc, last_name: :asc)
	end

	def User.digest(string)
	  cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST :
	                                                BCrypt::Engine.cost
	  BCrypt::Password.create(string, cost: cost)
	end
end
