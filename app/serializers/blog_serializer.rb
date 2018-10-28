# == Schema Information
#
# Table name: blogs
#
#  id          :integer          not null, primary key
#  content     :text(5000)       not null
#  date        :datetime         not null
#  image       :binary
#  num_likes   :integer
#  title       :string(100)      not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  location_id :integer
#  user_id     :integer
#
# Indexes
#
#  index_blogs_on_location_id  (location_id)
#  index_blogs_on_user_id      (user_id)
#

class BlogSerializer < ActiveModel::Serializer
  attributes :id, :title, :date, :content, :num_likes, :image, :location_id, :user_id

  belongs_to :user
  has_many :photo_galeries, as: :imageable
  has_many :blog_tag_mediators
  has_many :tags, through: :blog_tag_mediators
  belongs_to :location, optional: true
  has_many :comment

end
