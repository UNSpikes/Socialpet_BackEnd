class CreateBreeds < ActiveRecord::Migration[5.2]
  def change
    create_table :breeds do |t|
      t.string :breed_type, limit: 30, null: false

      t.timestamps
    end
  end
end
