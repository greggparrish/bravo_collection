class CreateFindingAids < ActiveRecord::Migration
  def change
    create_table :finding_aids do |t|
      t.text :body_text

      t.timestamps null: false
    end
  end
end
