class BlogSerializer < ActiveModel::Serializer
  attributes :id, :title, :date, :content, :num_likes, :image, :location_id, :user_id

  belongs_to :user
  has_many :photo_galeries, as: :imageable
  has_many :blog_tag_mediators
  has_many :tags, through: :blog_tag_mediators
  belongs_to :location, optional: true
  has_many :comment

end
