# == Schema Information
#
# Table name: comments
#
#  id             :integer          not null, primary key
#  content        :text(300)        not null
#  date           :datetime         not null
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  user_id        :integer
#  blog_id        :integer
#  publication_id :integer
#

class CommentSerializer < ActiveModel::Serializer
  attributes :id, :content, :date, :user_id, :blog_id, :publication_id

  belongs_to :user
  belongs_to :blog, optional: true
  belongs_to :publication, optional: true
end
