class AddSlugToFilms < ActiveRecord::Migration
  def change
    add_column :films, :slug, :string, unique: true
    add_index :films, :slug
  end
end
