class AddBlogIdToPhotoGalery < ActiveRecord::Migration[5.2]
  def change
    add_reference :photo_galeries, :blog, foreign_key: true
  end
end
