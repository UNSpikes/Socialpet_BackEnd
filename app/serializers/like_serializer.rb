class LikeSerializer < ActiveModel::Serializer
  attributes :id, :id_dog2, :like_status, :dog_id, :match_id, :user_id

  belongs_to :dog
  belongs_to :match
end
