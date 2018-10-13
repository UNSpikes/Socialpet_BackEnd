class Comment < ApplicationRecord
	validates :content, :date, presence: true
	validates :content, length: { maximum: 300, too_long:"Pueden haber unicamente %´{count} caracteres" }
	belongs_to :user
    belongs_to :blog, optional: true
    belongs_to :publication, optional: true
end
