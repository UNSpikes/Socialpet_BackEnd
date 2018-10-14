class PhotoGalery < ApplicationRecord
    validates :image, presence: true, length: {maximum: 200}
    
    belongs_to :imageable, polymorphic: true, optional: true
    belongs_to :dog, optional: true
end