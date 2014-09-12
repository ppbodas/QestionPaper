class QuestionbankController < ApplicationController
  def index
    @questions = Question.all
  end
end
