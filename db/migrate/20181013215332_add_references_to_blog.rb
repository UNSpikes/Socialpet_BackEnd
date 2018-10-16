class AddReferencesToBlog < ActiveRecord::Migration[5.2]
  def change
    add_reference :blogs, :location, foreign_key: true
    add_reference :blogs, :user, foreign_key: true
    add_reference :blogs, :tag, foreign_key: true
  end
end
