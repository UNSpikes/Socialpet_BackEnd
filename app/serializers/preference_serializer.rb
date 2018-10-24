# == Schema Information
#
# Table name: preferences
#
#  id           :integer          not null, primary key
#  language     :string(20)       not null
#  max_distance :integer          not null
#  privacy      :boolean          not null
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  user_id      :integer
#
# Indexes
#
#  index_preferences_on_user_id  (user_id)
#

class PreferenceSerializer < ActiveModel::Serializer
  attributes :id, :privacy, :language, :max_distance, :user_id

  belongs_to :user
end
