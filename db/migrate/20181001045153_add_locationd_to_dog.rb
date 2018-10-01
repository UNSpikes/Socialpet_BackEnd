class AddLocationdToDog < ActiveRecord::Migration[5.2]
  def change
    add_reference :dogs, :location, foreign_key: true
  end
end
