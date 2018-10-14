class Blog < ApplicationRecord
	validates :title, :content, :date, presence: true
	validates :title, length: { maximum: 100, too_long:"Pueden haber unicamente %´{count} caracteres" }
	validates :content, length: { maximum: 5000, too_long: "Se permiten máximo %´{count} caracteres" }
	belongs_to :user
    has_many :photo_galeries, as: :imageable
    has_many :blog_tag_mediators
    has_many :tags, through: :blog_tag_mediators
    belongs_to :location, optional: true
    has_many :comment
end
