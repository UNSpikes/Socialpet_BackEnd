# == Schema Information
#
# Table name: preferences
#
#  id           :integer          not null, primary key
#  privacy      :boolean          not null
#  language     :string(20)       not null
#  max_distance :integer          not null
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  user_id      :integer
#

class PreferenceSerializer < ActiveModel::Serializer
  attributes :id, :privacy, :language, :max_distance, :user_id

  belongs_to :user
end
