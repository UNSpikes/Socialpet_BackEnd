class CreateTags < ActiveRecord::Migration[5.2]
  def change
    create_table :tags do |t|
      t.string :tag_name, limit: 15, null: false

      t.timestamps
    end
  end
end
