class CreatePaperItems < ActiveRecord::Migration
  def change
    create_table :paper_items do |t|
      t.integer :paper_id
      t.integer :question_id

      t.timestamps
    end
  end
end
