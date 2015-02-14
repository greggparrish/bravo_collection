class AddTranscriptToVideos < ActiveRecord::Migration
  def self.up
    add_attachment :videos, :transcript
  end

  def self.down
    remove_attachment :videos, :transcript
  end
end
