class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.text :content, limit: 300, null: false
      t.datetime :date, null: false

      t.timestamps
    end

    add_reference :comments, :user, foreign_key: true
    add_reference :comments, :blog, foreign_key: true
    add_reference :comments, :publication, foreign_key: true

  end
end
