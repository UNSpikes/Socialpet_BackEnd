class AddLongitudToLocations < ActiveRecord::Migration[5.2]
  def change
    add_column :locations, :longitud, :string
    add_column :locations, :latitud, :string
  end
end
