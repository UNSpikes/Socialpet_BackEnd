class PhotoGalery < ApplicationRecord
    belongs_to :imageable, polymorphic: true
    has_one :dog
end