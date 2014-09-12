class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.text :body
      t.string :option1
      t.string :option2
      t.string :option3
      t.string :option4

      t.timestamps
    end
  end
end
