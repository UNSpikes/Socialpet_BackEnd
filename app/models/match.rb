class Match < ApplicationRecord
	validates :date, :match_status, presence: true
end
