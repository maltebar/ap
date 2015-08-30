class CodeSolutionAttachmentsController < ApplicationController
  before_action :set_code_solution_attachment, only: [:show, :edit, :update, :destroy]

  # GET /code_solution_attachments
  # GET /code_solution_attachments.json
  def index
    @code_solution_attachments = CodeSolutionAttachment.all
  end

  # GET /code_solution_attachments/1
  # GET /code_solution_attachments/1.json
  def show
  end

  # GET /code_solution_attachments/new
  def new
    @code_solution_attachment = CodeSolutionAttachment.new
  end

  # GET /code_solution_attachments/1/edit
  def edit
  end

  # POST /code_solution_attachments
  # POST /code_solution_attachments.json
  def create
    @code_solution_attachment = CodeSolutionAttachment.new(code_solution_attachment_params)

    respond_to do |format|
      if @code_solution_attachment.save
        format.html { redirect_to code_solution_path(@code_solution_attachment.code_solution), notice: 'Code solution attachment was successfully created.' }
        format.json { render :show, status: :created, location: @code_solution_attachment }
      else
        format.html { render :new }
        format.json { render json: @code_solution_attachment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /code_solution_attachments/1
  # PATCH/PUT /code_solution_attachments/1.json
  def update
    respond_to do |format|
      if @code_solution_attachment.update(code_solution_attachment_params)
        format.html { redirect_to code_solution_path(@code_solution_attachment.code_solution), notice: 'Code solution attachment was successfully updated.' }
        format.json { render :show, status: :ok, location: @code_solution_attachment }
      else
        format.html { render :edit }
        format.json { render json: @code_solution_attachment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /code_solution_attachments/1
  # DELETE /code_solution_attachments/1.json
  def destroy
    @code_solution_attachment.destroy
    respond_to do |format|
      format.html { redirect_to code_solution_attachments_url, notice: 'Code solution attachment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_code_solution_attachment
      @code_solution_attachment = CodeSolutionAttachment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def code_solution_attachment_params
      params.require(:code_solution_attachment).permit(:record, :title, :code_solution_id)
    end
end
