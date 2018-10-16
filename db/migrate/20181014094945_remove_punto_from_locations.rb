class RemovePuntoFromLocations < ActiveRecord::Migration[5.2]
  def change
    remove_column :locations, :punto, :string
  end
end
