class FixAdminInfoTypo < ActiveRecord::Migration
  def change
    add_column :finding_aids, :administrative_information, :text
  end
end
