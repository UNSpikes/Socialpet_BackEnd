class CreateBlogs < ActiveRecord::Migration[5.2]
  def change
    create_table :blogs do |t|
      t.string :title, limit:100 ,null: false
      t.datetime :date, null: false
      t.text :content, limit: 5000, null: false
      t.integer :num_likes
      t.binary :image
      t.timestamps
    end
  end
end
