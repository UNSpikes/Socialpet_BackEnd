# == Schema Information
#
# Table name: likes
#
#  id          :integer          not null, primary key
#  id_dog2     :integer          not null
#  like_status :boolean          not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  dog_id      :integer
#  match_id    :integer
#  user_id     :integer
#

class LikeSerializer < ActiveModel::Serializer
  attributes :id, :id_dog2, :like_status, :dog_id, :match_id, :user_id

  belongs_to :dog
  belongs_to :match
end
