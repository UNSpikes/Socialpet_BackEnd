class CreatePreferences < ActiveRecord::Migration[5.2]
  def change
    create_table :preferences do |t|
      t.boolean :privacy, null: false	
      t.string :language, limit:20,null: false
      t.integer :max_distance, limit: 4, null: false

      t.timestamps
    end
  end
end
