class Publication < ApplicationRecord
    belongs_to :dog
    has_many :comment
end
