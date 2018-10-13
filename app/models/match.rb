# == Schema Information
#
# Table name: matches
#
#  id           :integer          not null, primary key
#  date         :datetime         not null
#  match_status :boolean          not null
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Match < ApplicationRecord
	validates :date, :match_status, presence: true
	has_many :like
end
