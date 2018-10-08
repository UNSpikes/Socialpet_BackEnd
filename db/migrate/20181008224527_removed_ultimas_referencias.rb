# Se eliminan todos las referencias de user-preferences
# y match-like
class RemovedUltimasReferencias < ActiveRecord::Migration[5.2]
  def change
    remove_reference :preferences, :user
    remove_reference :likes, :match
  end
end
