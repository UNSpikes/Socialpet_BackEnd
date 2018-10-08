# Se eliminan todos las referencias execpto las de user-preferences
# y match-like
class RemovedAllForeingkey < ActiveRecord::Migration[5.2]
  def change
    remove_reference :comments, :publication
    remove_reference :comments, :blog
    remove_reference :photo_galeries, :blog
    remove_reference :blogs, :location
    remove_reference :blogs, :tag
    remove_reference :dogs, :location
    remove_reference :photo_galeries, :dog
    remove_reference :publications, :dog
    remove_reference :dogs, :breed
    remove_reference :comments, :user
    remove_reference :blogs, :user
    remove_reference :dogs, :user
  end
end
