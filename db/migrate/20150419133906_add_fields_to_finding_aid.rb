class AddFieldsToFindingAid < ActiveRecord::Migration
  def change
    add_column :finding_aids, :creator, :string
    add_column :finding_aids, :title, :string
    add_column :finding_aids, :dates_inclusive, :string
    add_column :finding_aids, :dates_bulk, :string
    add_column :finding_aids, :abstract, :text
    add_column :finding_aids, :quantity, :text
    add_column :finding_aids, :location_note, :text
    add_column :finding_aids, :language, :string
    add_column :finding_aids, :call_phrase, :string
    add_column :finding_aids, :header, :text
    add_column :finding_aids, :historical_note, :text
    add_column :finding_aids, :scope_note, :text
    add_column :finding_aids, :access_points, :text
    add_column :finding_aids, :adminstrative_information, :text
    add_column :finding_aids, :arrangement, :text
    remove_column :finding_aids, :body_text, :text
  end
end
