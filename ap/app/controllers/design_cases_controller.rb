class DesignCasesController < ApplicationController
  before_action :set_design_case, only: [:show, :edit, :update, :destroy]

  # GET /design_cases
  # GET /design_cases.json
  def index
    @design_cases = DesignCase.all
  end

  def design_admin
    @design_case = DesignCase.find(params[:design_case])
  end

  # GET /design_cases/1
  # GET /design_cases/1.json
  def show
  end

  # GET /design_cases/new
  def new
    @design_case = DesignCase.new
  end

  # GET /design_cases/1/edit
  def edit
  end

  # POST /design_cases
  # POST /design_cases.json
  def create
    @design_case = DesignCase.new(design_case_params)

    respond_to do |format|
      if @design_case.save
        format.html { redirect_to @design_case, notice: 'Design case was successfully created.' }
        format.json { render :show, status: :created, location: @design_case }
      else
        format.html { render :new }
        format.json { render json: @design_case.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /design_cases/1
  # PATCH/PUT /design_cases/1.json
  def update
    respond_to do |format|
      if @design_case.update(design_case_params)
        format.html { redirect_to @design_case, notice: 'Design case was successfully updated.' }
        format.json { render :show, status: :ok, location: @design_case }
      else
        format.html { render :edit }
        format.json { render json: @design_case.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /design_cases/1
  # DELETE /design_cases/1.json
  def destroy
    @design_case.destroy
    respond_to do |format|
      format.html { redirect_to design_cases_url, notice: 'Design case was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_design_case
      @design_case = DesignCase.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def design_case_params
      params.require(:design_case).permit(:title, :description, :design_problem, :questions, :solution_1, :solution_2, :solution_3)
    end
end
