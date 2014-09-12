class PaperItemsController < ApplicationController
  before_action :set_paper_item, only: [:show, :edit, :update, :destroy]

  # GET /paper_items
  # GET /paper_items.json
  def index
    @paper_items = PaperItem.all
  end

  # GET /paper_items/1
  # GET /paper_items/1.json
  def show
  end

  # GET /paper_items/new
  def new
    @paper_item = PaperItem.new
  end

  # GET /paper_items/1/edit
  def edit
  end

  # POST /paper_items
  # POST /paper_items.json
  def create
    @paper = current_paper
    question = Question.find(params[:question_id])
    @paper_item = @paper.paper_items.build(:question=> question)

    respond_to do |format|
      if @paper_item.save
        format.html { redirect_to @paper_item, notice: 'Paper item was successfully created.' }
        format.json { render action: 'show', status: :created, location: @paper_item }
      else
        format.html { render action: 'new' }
        format.json { render json: @paper_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /paper_items/1
  # PATCH/PUT /paper_items/1.json
  def update
    respond_to do |format|
      if @paper_item.update(paper_item_params)
        format.html { redirect_to @paper_item, notice: 'Paper item was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @paper_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /paper_items/1
  # DELETE /paper_items/1.json
  def destroy
    @paper_item.destroy
    respond_to do |format|
      format.html { redirect_to paper_items_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_paper_item
      @paper_item = PaperItem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def paper_item_params
      params.require(:paper_item).permit(:paper_id, :question_id)
    end
end
