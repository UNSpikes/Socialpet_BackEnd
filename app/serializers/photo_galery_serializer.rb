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

class PhotoGalerySerializer < ActiveModel::Serializer
  attributes :id, :image, :imageable_id, :imageable_type, :dog_id, :blog_id, :user_id

  belongs_to :imageable, polymorphic: true, optional: true
  belongs_to :dog, optional: true
end
