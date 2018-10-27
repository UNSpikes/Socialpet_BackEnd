# == Schema Information
#
# Table name: blog_tag_mediators
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  blog_id    :integer
#  tag_id     :integer
#

class BlogTagMediatorSerializer < ActiveModel::Serializer
  attributes :id, :blog_id, :tag_id

  belongs_to :blog
  belongs_to :tag
end
