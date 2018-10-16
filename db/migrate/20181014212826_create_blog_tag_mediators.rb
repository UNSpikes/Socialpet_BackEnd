class CreateBlogTagMediators < ActiveRecord::Migration[5.2]
  def change
    # Clase creada por la relacion muchos a muchos
    # entre la tabla blogs t tags
    # estas asociaciones se ven reflejadas en los modelos
    create_table :blog_tag_mediators do |t|

      t.timestamps
    end
    add_reference :blog_tag_mediators, :blog, foreign_key: true
    add_reference :blog_tag_mediators, :tag, foreign_key: true
  end
end
