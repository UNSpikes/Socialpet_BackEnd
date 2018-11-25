class AddUrlBlogToBlogs < ActiveRecord::Migration[5.2]
  def change
    add_column :blogs, :urlblog, :string, :limit => 300
  end
end
