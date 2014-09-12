class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  def current_paper
    Paper.find(session[:paper_id])
    rescue ActiveRecord::RecordNotFound
      paper = Paper.create
      session[:paper_id] = paper.id 
      paper
  end
end
