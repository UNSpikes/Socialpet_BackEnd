class CreateLocations < ActiveRecord::Migration[5.2]
  def change
    create_table :locations do |t|
      t.string :longitud, limit: 20, null: false
      t.string :latitud, limit: 20, null: false
      t.string :city, null: false

      t.timestamps
    end
  end
end
