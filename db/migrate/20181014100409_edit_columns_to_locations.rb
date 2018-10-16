class EditColumnsToLocations < ActiveRecord::Migration[5.2]
  def change
    change_column :locations, :latitud, :string, :limit => 20, :null => false
    change_column :locations, :longitud, :string, :limit => 20, :null => false
    #Ex:- change_column("admin_users", "email", :string, :limit =>25)
  end
end
