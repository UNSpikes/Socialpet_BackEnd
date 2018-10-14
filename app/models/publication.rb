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

class Publication < ApplicationRecord
    belongs_to :dog, optional: true
    has_many :comment
end
