class CreatePublications < ActiveRecord::Migration[5.2]
  def change
    create_table :publications do |t|
      t.integer :num_comments
      t.integer :num_likes

      t.timestamps
    end

    add_reference :publications, :user, foreign_key: true
    add_reference :publications, :dog, foreign_key: true

  end
end
