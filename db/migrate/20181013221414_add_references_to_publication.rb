class AddReferencesToPublication < ActiveRecord::Migration[5.2]
  def change
    add_reference :publications, :user, foreign_key: true
    add_reference :publications, :dog, foreign_key: true
  end
end
