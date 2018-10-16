class MatchSerializer < ActiveModel::Serializer
  attributes :id, :date, :match_status

  has_many :like
end
