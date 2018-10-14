# == Schema Information
#
# Table name: preferences
#
#  id           :integer          not null, primary key
#  privacy      :boolean          not null
#  language     :string(20)       not null
#  max_distance :integer          not null
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  user_id      :integer
#

class Preference < ApplicationRecord
	validates :privacy, :language,:max_distance, presence: true
	validates :language, length: { maximum: 20, too_long:"Pueden haber unicamente %´{count} caracteres" }
	validates :max_distance, length: { maximum: 4,too_long: "Se permiten máximo %´{count} caracteres" }
	belongs_to :user
end
