class AddBreedIdToDog < ActiveRecord::Migration[5.2]
  def change
    add_reference :dogs, :breed, foreign_key: true
  end
end
