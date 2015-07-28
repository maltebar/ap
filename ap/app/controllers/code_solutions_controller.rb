class CodeSolutionsController < ApplicationController
  before_action :set_code_solution, only: [:show, :edit, :update, :destroy]

  # GET /code_solutions
  # GET /code_solutions.json
  def index
    @code_solutions = CodeSolution.all
  end

  # GET /code_solutions/1
  # GET /code_solutions/1.json
  def show
  end

  # GET /code_solutions/new
  def new
    @code_solution = CodeSolution.new
  end

  # GET /code_solutions/1/edit
  def edit
  end

  # POST /code_solutions
  # POST /code_solutions.json
  def create
    @code_solution = CodeSolution.new(code_solution_params)

    respond_to do |format|
      if @code_solution.save
        format.html { redirect_to @code_solution, notice: 'Code solution was successfully created.' }
        format.json { render :show, status: :created, location: @code_solution }
      else
        format.html { render :new }
        format.json { render json: @code_solution.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /code_solutions/1
  # PATCH/PUT /code_solutions/1.json
  def update
    respond_to do |format|
      if @code_solution.update(code_solution_params)
        format.html { redirect_to @code_solution, notice: 'Code solution was successfully updated.' }
        format.json { render :show, status: :ok, location: @code_solution }
      else
        format.html { render :edit }
        format.json { render json: @code_solution.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /code_solutions/1
  # DELETE /code_solutions/1.json
  def destroy
    @code_solution.destroy
    respond_to do |format|
      format.html { redirect_to code_solutions_url, notice: 'Code solution was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_code_solution
      @code_solution = CodeSolution.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def code_solution_params
      params[:code_solution]
    end
end
