class GroupMemsController < ApplicationController
  before_action :set_group_mem, only: [:show, :edit, :update, :destroy]

  # GET /group_mems
  # GET /group_mems.json
  def index
    @group_mems = GroupMem.all
  end

  # GET /group_mems/1
  # GET /group_mems/1.json
  def show
  end

  # GET /group_mems/new
  def new
    @group_mem = GroupMem.new
  end

  # GET /group_mems/1/edit
  def edit
  end

  # POST /group_mems
  # POST /group_mems.json
  def create
    @group_mem = GroupMem.new(group_mem_params)

    respond_to do |format|
      if @group_mem.save
        format.html { redirect_to @group_mem, notice: 'Group mem was successfully created.' }
        format.json { render :show, status: :created, location: @group_mem }
      else
        format.html { render :new }
        format.json { render json: @group_mem.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /group_mems/1
  # PATCH/PUT /group_mems/1.json
  def update
    respond_to do |format|
      if @group_mem.update(group_mem_params)
        format.html { redirect_to @group_mem, notice: 'Group mem was successfully updated.' }
        format.json { render :show, status: :ok, location: @group_mem }
      else
        format.html { render :edit }
        format.json { render json: @group_mem.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /group_mems/1
  # DELETE /group_mems/1.json
  def destroy
    @group_mem.destroy
    respond_to do |format|
      format.html { redirect_to group_mems_url, notice: 'Group mem was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_group_mem
      @group_mem = GroupMem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def group_mem_params
      params.require(:group_mem).permit(:group_id, :user_id)
    end
end
