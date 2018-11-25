# == Schema Information
#
# Table name: photo_galeries
#
#  id             :integer          not null, primary key
#  image          :string           not null
#  imageable_type :string
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  blog_id        :integer
#  dog_id         :integer
#  imageable_id   :integer
#  user_id        :integer
#
# Indexes
#
#  index_photo_galeries_on_blog_id  (blog_id)
#  index_photo_galeries_on_dog_id   (dog_id)
#  index_photo_galeries_on_user_id  (user_id)
#

class PhotoGalery < ApplicationRecord
    validates :image, presence: true #, length: {maximum: 200}
    # con esa linea se representa la asociacion con las tablas dogs, users y blogs
    # donde un solo dog, user o blog tiene muchas imagenes
    belongs_to :imageable, polymorphic: true, optional: true

    # carrier para cargar la imagen
    mount_uploader :image, ImageUploader
end
