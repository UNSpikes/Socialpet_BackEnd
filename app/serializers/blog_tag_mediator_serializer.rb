class BlogTagMediatorSerializer < ActiveModel::Serializer
  attributes :id, :blog_id, :tag_id

  belongs_to :blog
  belongs_to :tag
end
