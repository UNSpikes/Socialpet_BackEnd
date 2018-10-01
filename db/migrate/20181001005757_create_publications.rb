class CreatePublications < ActiveRecord::Migration[5.2]
  def change
    create_table :publications do |t|
      t.integer :num_comments
      t.integer :num_likes

      t.timestamps
    end
  end
end
