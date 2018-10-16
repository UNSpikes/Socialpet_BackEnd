class PublicationSerializer < ActiveModel::Serializer
  attributes :id, :num_comments, :num_likes, :user_id, :dog_id

  belongs_to :dog, optional: true
  has_many :comment
end
