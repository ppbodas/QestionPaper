class RemoveQuestionIdFromPaper < ActiveRecord::Migration
  def change
    remove_column :papers, :question_id, :integer
  end
end
