class RemoveReferenceToBlog < ActiveRecord::Migration[5.2]
  # Elimina la referencia de tag en blogs
  def change
    remove_reference :blogs, :tag, foreign_key: true
  end
end
