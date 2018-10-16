class EditOtraColumnsToPhotoGaleries < ActiveRecord::Migration[5.2]
  def change
    change_column :photo_galeries, :image, :string, :null => false
  end
end
