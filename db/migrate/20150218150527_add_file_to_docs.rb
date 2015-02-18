class AddFileToDocs < ActiveRecord::Migration
  def self.up
    add_attachment :documents, :document_file
  end

  def self.down
    remove_attachment :documents, :document_file
  end
end
