class CreateMatches < ActiveRecord::Migration[5.2]
  def change
    create_table :matches do |t|
      t.datetime :date, null: false
      t.boolean :match_status, null: false

      t.timestamps
    end
  end
end

