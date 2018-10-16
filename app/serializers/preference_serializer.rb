class PreferenceSerializer < ActiveModel::Serializer
  attributes :id, :privacy, :language, :max_distance, :user_id

  belongs_to :user
end
