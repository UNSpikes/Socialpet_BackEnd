class Match < ApplicationRecord
	validates :date, :match_status, presence: true
	has_many :like
end
