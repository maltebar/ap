class CodeCasesController < ApplicationController
  before_action :set_code_case, only: [:show, :edit, :update, :destroy]

  # GET /code_cases
  # GET /code_cases.json
  def index
    @code_cases = CodeCase.all
  end

  # GET /code_cases/1
  # GET /code_cases/1.json
  def show
  end

  # GET /code_cases/new
  def new
    @code_case = CodeCase.new
  end

  # GET /code_cases/1/edit
  def edit
  end

  # POST /code_cases
  # POST /code_cases.json
  def create
    @code_case = CodeCase.new(code_case_params)

    respond_to do |format|
      if @code_case.save
        format.html { redirect_to @code_case, notice: 'Code case was successfully created.' }
        format.json { render :show, status: :created, location: @code_case }
      else
        format.html { render :new }
        format.json { render json: @code_case.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /code_cases/1
  # PATCH/PUT /code_cases/1.json
  def update
    respond_to do |format|
      if @code_case.update(code_case_params)
        format.html { redirect_to @code_case, notice: 'Code case was successfully updated.' }
        format.json { render :show, status: :ok, location: @code_case }
      else
        format.html { render :edit }
        format.json { render json: @code_case.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /code_cases/1
  # DELETE /code_cases/1.json
  def destroy
    @code_case.destroy
    respond_to do |format|
      format.html { redirect_to code_cases_url, notice: 'Code case was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_code_case
      @code_case = CodeCase.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def code_case_params
      params[:code_case]
    end
end
