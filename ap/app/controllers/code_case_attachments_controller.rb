class CodeCaseAttachmentsController < ApplicationController
  before_action :set_code_case_attachment, only: [:show, :edit, :update, :destroy]

  # GET /code_case_attachments
  # GET /code_case_attachments.json
  def index
    @code_case_attachments = CodeCaseAttachment.all
  end

  # GET /code_case_attachments/1
  # GET /code_case_attachments/1.json
  def show
  end

  # GET /code_case_attachments/new
  def new
    @code_case_attachment = CodeCaseAttachment.new
  end

  # GET /code_case_attachments/1/edit
  def edit
  end

  # POST /code_case_attachments
  # POST /code_case_attachments.json
  def create
    @code_case_attachment = CodeCaseAttachment.new(code_case_attachment_params)

    respond_to do |format|
      if @code_case_attachment.save
        format.html { redirect_to @code_case_attachment, notice: 'Code case attachment was successfully created.' }
        format.json { render :show, status: :created, location: @code_case_attachment }
      else
        format.html { render :new }
        format.json { render json: @code_case_attachment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /code_case_attachments/1
  # PATCH/PUT /code_case_attachments/1.json
  def update
    respond_to do |format|
      if @code_case_attachment.update(code_case_attachment_params)
        format.html { redirect_to @code_case_attachment, notice: 'Code case attachment was successfully updated.' }
        format.json { render :show, status: :ok, location: @code_case_attachment }
      else
        format.html { render :edit }
        format.json { render json: @code_case_attachment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /code_case_attachments/1
  # DELETE /code_case_attachments/1.json
  def destroy
    @code_case_attachment.destroy
    respond_to do |format|
      format.html { redirect_to code_case_attachments_url, notice: 'Code case attachment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_code_case_attachment
      @code_case_attachment = CodeCaseAttachment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def code_case_attachment_params
      params.require(:code_case_attachment).permit(:record, :title, :code_case_id)
    end
end
