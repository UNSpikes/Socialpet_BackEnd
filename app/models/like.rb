# == Schema Information
#
# Table name: likes
#
#  id          :integer          not null, primary key
#  id_dog2     :integer          not null
#  like_status :boolean          not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Like < ApplicationRecord
	validates :id_dog2, :like_status, presence: true
	belongs_to :dog
    belongs_to :match
end
