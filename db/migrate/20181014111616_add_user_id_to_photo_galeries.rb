class AddUserIdToPhotoGaleries < ActiveRecord::Migration[5.2]
  def change
    add_reference :photo_galeries, :user, foreign_key: true
  end
end
