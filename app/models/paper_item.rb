class PaperItem < ActiveRecord::Base
  belongs_to :paper
  belongs_to :question
end
