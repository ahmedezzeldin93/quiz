module API
class QuizzsController < ApplicationController
  before_action :set_quizz, only: [:show, :edit, :update, :destroy]

  # GET /quizzs
  # GET /quizzs.json
  def index
    @quizzs = Quizz.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @quizzs }
    end
  end

  # GET /quizzs/1
  # GET /quizzs/1.json
  def show
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @quizz }
    end
  end

  # GET /quizzs/new
  def new
    @quizz = Quizz.new
  end

  # GET /quizzs/1/edit
  def edit
  end

  # POST /quizzs
  # POST /quizzs.json
  def create
    @quizz = Quizz.new(quizz_params)

    respond_to do |format|
      if @quizz.save
        format.html { redirect_to @quizz, notice: 'Quizz was successfully created.' }
        format.json { render json: @quizz, status: :created }
      else
        format.html { render action: 'new' }
        format.json { render json: @quizz.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /quizzs/1
  # PATCH/PUT /quizzs/1.json
  def update
    respond_to do |format|
      if @quizz.update(quizz_params)
        format.html { redirect_to @quizz, notice: 'Quizz was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @quizz.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /quizzs/1
  # DELETE /quizzs/1.json
  def destroy
    @quizz.destroy
    respond_to do |format|
      format.html { redirect_to quizzs_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_quizz
      @quizz = Quizz.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def quizz_params
      params.require(:quizz).permit(:title, :subject, :description, :mark, :status)
    end
end
end