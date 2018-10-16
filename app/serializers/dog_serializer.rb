class DogSerializer < ActiveModel::Serializer
  attributes :id, :name, :age, :sex, :description, :interests, :user_id, :breed_id, :location_id

  belongs_to :user
  belongs_to :breed
  has_many :publications 
  has_one :photo_galery
  belongs_to :location, optional: true
  has_many :likes
end
