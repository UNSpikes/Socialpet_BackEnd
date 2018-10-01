class Like < ApplicationRecord
	validates :id_dog2, :like_status, presence: true
	belongs_to :dog
    belongs_to :match
end
