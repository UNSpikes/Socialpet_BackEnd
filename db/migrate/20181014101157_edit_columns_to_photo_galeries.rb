class EditColumnsToPhotoGaleries < ActiveRecord::Migration[5.2]
  def change
    change_column :photo_galeries, :image, :string
  end
end
