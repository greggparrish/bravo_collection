class ChangeVideoEmbedStringToText < ActiveRecord::Migration
  def change
    change_column :videos, :embed, :text
  end
end
