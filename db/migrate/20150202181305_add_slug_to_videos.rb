class AddSlugToVideos < ActiveRecord::Migration
  def change
    add_column :videos, :slug, :string, unique: true
    add_index :videos, :slug
  end
end
