class AddDogIdToPhotoGalery < ActiveRecord::Migration[5.2]
  def change
    add_reference :photo_galeries, :dog, foreign_key: true
  end
end
