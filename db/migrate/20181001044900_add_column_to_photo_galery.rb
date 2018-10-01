class AddColumnToPhotoGalery < ActiveRecord::Migration[5.2]
  def change
    add_column :photo_galeries, :imageable_id, :integer
    add_column :photo_galeries, :imageable_type, :string 
  end
end
