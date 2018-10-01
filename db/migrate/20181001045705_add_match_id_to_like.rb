class AddMatchIdToLike < ActiveRecord::Migration[5.2]
  def change
    add_reference :likes, :match, foreign_key: true
  end
end
