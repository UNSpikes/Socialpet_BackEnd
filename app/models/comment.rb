# == Schema Information
#
# Table name: comments
#
#  id         :integer          not null, primary key
#  content    :text(300)        not null
#  date       :datetime         not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Comment < ApplicationRecord
	validates :content, :date, presence: true
	validates :content, length: { maximum: 300, too_long:"Pueden haber unicamente %´{count} caracteres" }
	belongs_to :user
    belongs_to :blog
    belongs_to :publication
end
