class CreatePapers < ActiveRecord::Migration
  def change
    create_table :papers do |t|
      t.integer :question_id

      t.timestamps
    end
  end
end
