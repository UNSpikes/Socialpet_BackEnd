class PhotoGalerySerializer < ActiveModel::Serializer
  attributes :id, :image, :imageable_id, :imageable_type, :dog_id, :blog_id, :user_id

  belongs_to :imageable, polymorphic: true, optional: true
  belongs_to :dog, optional: true
end
