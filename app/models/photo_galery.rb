# == Schema Information
#
# Table name: photo_galeries
#
#  id             :integer          not null, primary key
#  image          :binary
#  imageable_type :string
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  imageable_id   :integer
#

class PhotoGalery < ApplicationRecord
    belongs_to :imageable, polymorphic: true
    has_one :dog
end
