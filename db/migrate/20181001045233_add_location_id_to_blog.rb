class AddLocationIdToBlog < ActiveRecord::Migration[5.2]
  def change
    add_reference :blogs, :location, foreign_key: true
  end
end
