# == Schema Information
#
# Table name: tags
#
#  id         :integer          not null, primary key
#  tag_name   :string(15)       not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class TagSerializer < ActiveModel::Serializer
  attributes :id, :tag_name

  has_many :blog_tag_mediators
  has_many :blogs, through: :blog_tag_mediators
end
