class Publication < ApplicationRecord
    belongs_to :dog, optional: true
    has_many :comment
end
