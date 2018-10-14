class Tag < ApplicationRecord
	validates :tag_name, presence: true
	validates :tag_name, length: { maximum: 15, too_long:"Pueden haber unicamente %´{count} caracteres" }
	has_many :blog_tag_mediators
    has_many :blogs, through: :blog_tag_mediators
end
