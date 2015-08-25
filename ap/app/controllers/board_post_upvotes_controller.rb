class BoardPostUpvotesController < ApplicationController
  before_action :set_board_post_upvote, only: [:show, :edit, :update, :destroy]

  # GET /board_post_upvotes
  # GET /board_post_upvotes.json
  def index
    @board_post_upvotes = BoardPostUpvote.all
  end

  # GET /board_post_upvotes/1
  # GET /board_post_upvotes/1.json
  def show
  end

  # GET /board_post_upvotes/new
  def new
    @board_post_upvote = BoardPostUpvote.new
  end

  # GET /board_post_upvotes/1/edit
  def edit
  end

  # POST /board_post_upvotes
  # POST /board_post_upvotes.json
  def create
    @board_post_upvote = BoardPostUpvote.new(board_post_upvote_params)

    respond_to do |format|
      if @board_post_upvote.save
        format.html { redirect_to @board_post_upvote.board_post, notice: 'Board post upvote was successfully created.' }
        format.json { render :show, status: :created, location: @board_post_upvote }
      else
        format.html { render :new }
        format.json { render json: @board_post_upvote.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /board_post_upvotes/1
  # PATCH/PUT /board_post_upvotes/1.json
  def update
    respond_to do |format|
      if @board_post_upvote.update(board_post_upvote_params)
        format.html { redirect_to @board_post_upvote, notice: 'Board post upvote was successfully updated.' }
        format.json { render :show, status: :ok, location: @board_post_upvote }
      else
        format.html { render :edit }
        format.json { render json: @board_post_upvote.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /board_post_upvotes/1
  # DELETE /board_post_upvotes/1.json
  def destroy
    @board_post_upvote.destroy
    respond_to do |format|
      format.html { redirect_to board_post_upvotes_url, notice: 'Board post upvote was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_board_post_upvote
      @board_post_upvote = BoardPostUpvote.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def board_post_upvote_params
      params.require(:board_post_upvote).permit(:user_id, :board_post_id)
    end
end
