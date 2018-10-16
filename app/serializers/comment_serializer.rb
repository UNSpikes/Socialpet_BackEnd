class CommentSerializer < ActiveModel::Serializer
  attributes :id, :content, :date, :user_id, :blog_id, :publication_id

  belongs_to :user
  belongs_to :blog, optional: true
  belongs_to :publication, optional: true
end
