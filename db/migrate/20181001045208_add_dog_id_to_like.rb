class AddDogIdToLike < ActiveRecord::Migration[5.2]
  def change
    add_reference :likes, :dog, foreign_key: true
  end
end
