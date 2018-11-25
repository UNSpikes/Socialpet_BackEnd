class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name, limit: 100, null: false
      t.string :last_name, limit: 100, null: false
      t.integer :age, limit: 3
      t.string :phone_number, limit: 20
      t.text :additional_info, limit: 5000
      t.string :country, limit: 56
      t.string :city, limit: 85
      t.string :password_digest, limit:16
      t.string :email, limit:100, null: false

      t.timestamps
    end
  end
end
