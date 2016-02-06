class CoursesController < ApplicationController
  before_action :set_cours, only: [:show, :edit, :update, :destroy]

  # GET /courses
  # GET /courses.json
  def index
    @courses = Course.all
  end

  # GET /courses/1
  # GET /courses/1.json
  def show
  end

  # GET /courses/new
  def new
    @course = Course.new
  end

  # GET /courses/1/edit
  def edit
  end

  # POST /courses
  # POST /courses.json
  def create
    @course = Course.new(cours_params)

    respond_to do |format|
      if @course.save
        format.html { redirect_to @course, notice: I18n.t('helpers.messages.successfully_created') }
        format.json { render action: 'show', status: :created, location: @course }
      else
        flash[:error] = I18n.t('errors.messages.errors_found')
        format.html { render action: 'new' }
        format.json { render json: @course.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /courses/1
  # PATCH/PUT /courses/1.json
  def update
    respond_to do |format|
      if @course.update(cours_params)
        format.html { redirect_to @course, notice: I18n.t('helpers.messages.successfully_updated') }
        format.json { head :no_content }
      else
        flash[:error] = I18n.t('errors.messages.errors_found')
        format.html { render action: 'edit' }
        format.json { render json: @course.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /courses/1
  # DELETE /courses/1.json
  def destroy
    @course.destroy
    respond_to do |format|
      format.html { redirect_to courses_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cours
      @course = Course.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cours_params
      params.require(:course).permit(:name, :description, :status)
    end
end
