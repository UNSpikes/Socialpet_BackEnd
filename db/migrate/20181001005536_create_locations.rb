class CreateLocations < ActiveRecord::Migration[5.2]
  def change
    create_table :locations do |t|
      t.float :longitude, null: false
      t.float :latitude, null: false
      t.string :city, null: false

      t.timestamps
    end
  end
end
