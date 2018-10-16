class TagSerializer < ActiveModel::Serializer
  attributes :id, :tag_name

  has_many :blog_tag_mediators
  has_many :blogs, through: :blog_tag_mediators
end
