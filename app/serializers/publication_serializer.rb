# == Schema Information
#
# Table name: publications
#
#  id           :integer          not null, primary key
#  num_comments :integer
#  num_likes    :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  user_id      :integer
#  dog_id       :integer
#

class PublicationSerializer < ActiveModel::Serializer
  attributes :id, :num_comments, :num_likes, :user_id, :dog_id

  belongs_to :dog, optional: true
  has_many :comment
end
