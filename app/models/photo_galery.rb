class PhotoGalery < ApplicationRecord
    belongs_to :imageable, polymorphic: true, optional: true
    belongs_to :dog, optional: true
end