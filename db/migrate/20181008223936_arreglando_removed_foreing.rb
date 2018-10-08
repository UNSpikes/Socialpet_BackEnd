# Crea las foreingkeys eliminadas en las mgraciones
# 20181008221633_removed_user_id_to_preferences
# 20181008222055_removed_match_id_to_like
# Son las dos anteriores a 
# 20181008222313_removed_all_foreingkey
class ArreglandoRemovedForeing < ActiveRecord::Migration[5.2]
  def change
    add_foreign_key :preferences, :user
    add_foreign_key :likes, :match
  end
end
