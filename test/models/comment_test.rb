# == Schema Information
#
# Table name: comments
#
#  id             :integer          not null, primary key
#  content        :text(300)        not null
#  date           :datetime         not null
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  blog_id        :integer
#  publication_id :integer
#  user_id        :integer
#
# Indexes
#
#  index_comments_on_blog_id         (blog_id)
#  index_comments_on_publication_id  (publication_id)
#  index_comments_on_user_id         (user_id)
#

require 'test_helper'

class CommentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
