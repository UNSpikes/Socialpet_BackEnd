class CreatePhotoGaleries < ActiveRecord::Migration[5.2]
  def change
    create_table :photo_galeries do |t|
      t.binary :image

      t.timestamps
    end
  end
end
