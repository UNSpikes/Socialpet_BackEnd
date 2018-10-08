class RemovedUserIdToPreferences < ActiveRecord::Migration[5.2]
  def change
    remove_foreign_key :preferences, :user
  end
end
