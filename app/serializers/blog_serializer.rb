# == Schema Information
#
# Table name: blogs
#
#  id          :integer          not null, primary key
#  title       :string(100)      not null
#  date        :datetime         not null
#  content     :text(5000)       not null
#  num_likes   :integer
#  image       :binary
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  location_id :integer
#  user_id     :integer
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
