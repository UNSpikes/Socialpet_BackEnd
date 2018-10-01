class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.text :content, limit: 300, null: false
      t.datetime :date, null: false

      t.timestamps
    end
  end
end
