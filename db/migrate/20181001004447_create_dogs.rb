class CreateDogs < ActiveRecord::Migration[5.2]
  def change
    create_table :dogs do |t|
      t.string :name, limit: 100, null: false
      t.integer :age, limit: 2, null: false
      t.string :sex, limit:1, null: false
      t.text :description, limit: 5000, null: false
      t.integer :interests, limit:1, null: false

      t.timestamps
    end
  end
end


