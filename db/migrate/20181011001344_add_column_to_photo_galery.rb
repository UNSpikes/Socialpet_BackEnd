class AddColumnToPhotoGalery < ActiveRecord::Migration[5.2]
  def change
    # Cambio realizado para que la tabla photo_galeries
    # pueda recibir llaves foranes de más de una tabla
    # Tambien es necesario lo que esta especificao en su modelo
    add_column :photo_galeries, :imageable_id, :integer
    add_column :photo_galeries, :imageable_type, :string 
  end
end
