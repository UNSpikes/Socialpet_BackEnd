class CreateBlogs < ActiveRecord::Migration[5.2]
  def change
    create_table :blogs do |t|
      t.string :title, limit:100 ,null: false
      t.datetime :date, null: false
      t.text :content, limit: 5000, null: false
      t.integer :num_likes
      t.string :image
      t.timestamps
    end

    add_reference :blogs, :location, foreign_key: true
    add_reference :blogs, :user, foreign_key: true

  end
end
