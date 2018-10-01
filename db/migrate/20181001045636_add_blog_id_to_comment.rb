class AddBlogIdToComment < ActiveRecord::Migration[5.2]
  def change
    add_reference :comments, :blog, foreign_key: true
  end
end
