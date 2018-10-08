class RemovedMatchIdToLike < ActiveRecord::Migration[5.2]
  def change
    remove_foreign_key :likes, :match
  end
end
