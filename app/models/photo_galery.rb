# == Schema Information
#
# Table name: photo_galeries
#
#  id             :integer          not null, primary key
#  image          :string           not null
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  imageable_id   :integer
#  imageable_type :string
#  dog_id         :integer
#  blog_id        :integer
#  user_id        :integer
#

class PhotoGalery < ApplicationRecord
    validates :image, presence: true, length: {maximum: 200}
    
    belongs_to :imageable, polymorphic: true, optional: true
    belongs_to :dog, optional: true
end
