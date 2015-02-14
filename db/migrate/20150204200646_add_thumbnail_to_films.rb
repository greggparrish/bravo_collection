class AddThumbnailToFilms < ActiveRecord::Migration
  def self.up
    add_attachment :films, :thumbnail
  end

  def self.down
    remove_attachment :films, :thumbnail
  end
end
