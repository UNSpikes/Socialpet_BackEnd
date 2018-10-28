class CreatePhotoGaleries < ActiveRecord::Migration[5.2]
  def change
    create_table :photo_galeries do |t|
      t.string :image, null: false
      t.integer :imageable_id
      t.string :imageable_type

      t.timestamps
    end

    add_reference :photo_galeries, :dog, foreign_key: true
    add_reference :photo_galeries, :blog, foreign_key: true
    add_reference :photo_galeries, :user, foreign_key: true

  end
end
