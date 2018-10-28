class CreateCertificados < ActiveRecord::Migration[5.2]
  def change
    create_table :certificados do |t|
      t.string :ruta, :limit => 300, :null => false
      t.string :tipo, :limit => 45, :null => false

      t.timestamps
    end
    # Para la relaciion de 1 a muchos que tiene con la tabla dog
    add_reference :certificados, :user, foreign_key: true
    add_reference :certificados, :dog, foreign_key: true
  end
end
