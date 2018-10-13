# == Schema Information
#
# Table name: blogs
#
#  id         :integer          not null, primary key
#  content    :text(5000)       not null
#  date       :datetime         not null
#  image      :binary
#  num_likes  :integer
#  title      :string(100)      not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Blog < ApplicationRecord
	validates :title, :content, :date, presence: true
	validates :title, length: { maximum: 100, too_long:"Pueden haber unicamente %´{count} caracteres" }
	validates :content, length: { maximum: 5000, too_long: "Se permiten máximo %´{count} caracteres" }
	belongs_to :user
    has_many :photo_galeries, as: :imageable
    belongs_to :tag
    belongs_to :location
    has_many :comment
end
