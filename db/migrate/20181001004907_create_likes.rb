class CreateLikes < ActiveRecord::Migration[5.2]
  def change
    create_table :likes do |t|
      t.integer :id_dog2, null: false
      t.boolean :like_status, null: false

      t.timestamps
    end

    add_reference :likes, :dog, foreign_key: true
    add_reference :likes, :match, foreign_key: true
    add_reference :likes, :user, foreign_key: true
    
  end
end

