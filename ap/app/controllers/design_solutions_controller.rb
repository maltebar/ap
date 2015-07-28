class DesignSolutionsController < ApplicationController
  before_action :set_design_solution, only: [:show, :edit, :update, :destroy]

  # GET /design_solutions
  # GET /design_solutions.json
  def index
    @design_solutions = DesignSolution.all
  end

  # GET /design_solutions/1
  # GET /design_solutions/1.json
  def show
  end

  # GET /design_solutions/new
  def new
    @design_solution = DesignSolution.new
  end

  # GET /design_solutions/1/edit
  def edit
  end

  # POST /design_solutions
  # POST /design_solutions.json
  def create
    @design_solution = DesignSolution.new(design_solution_params)

    respond_to do |format|
      if @design_solution.save
        format.html { redirect_to @design_solution, notice: 'Design solution was successfully created.' }
        format.json { render :show, status: :created, location: @design_solution }
      else
        format.html { render :new }
        format.json { render json: @design_solution.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /design_solutions/1
  # PATCH/PUT /design_solutions/1.json
  def update
    respond_to do |format|
      if @design_solution.update(design_solution_params)
        format.html { redirect_to @design_solution, notice: 'Design solution was successfully updated.' }
        format.json { render :show, status: :ok, location: @design_solution }
      else
        format.html { render :edit }
        format.json { render json: @design_solution.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /design_solutions/1
  # DELETE /design_solutions/1.json
  def destroy
    @design_solution.destroy
    respond_to do |format|
      format.html { redirect_to design_solutions_url, notice: 'Design solution was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_design_solution
      @design_solution = DesignSolution.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def design_solution_params
      params[:design_solution]
    end
end
