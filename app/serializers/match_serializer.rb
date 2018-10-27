# == Schema Information
#
# Table name: matches
#
#  id           :integer          not null, primary key
#  date         :datetime         not null
#  match_status :boolean          not null
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class MatchSerializer < ActiveModel::Serializer
  attributes :id, :date, :match_status

  has_many :like
end
