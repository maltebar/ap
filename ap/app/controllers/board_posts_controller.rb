class BoardPostsController < ApplicationController
  before_action :set_board_post, only: [:show, :edit, :update, :destroy]

  # GET /board_posts
  # GET /board_posts.json
  def index
    @board_posts = BoardPost.all
  end

  # GET /board_posts/1
  # GET /board_posts/1.json
  def show
  end

  # GET /board_posts/new
  def new
    @board_post = BoardPost.new
  end

  # GET /board_posts/1/edit
  def edit
  end

  # POST /board_posts
  # POST /board_posts.json
  def create
    @board_post = BoardPost.new(board_post_params)

    respond_to do |format|
      if @board_post.save
        format.html { redirect_to @board_post, notice: 'Board post was successfully created.' }
        format.json { render :show, status: :created, location: @board_post }
      else
        format.html { render :new }
        format.json { render json: @board_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /board_posts/1
  # PATCH/PUT /board_posts/1.json
  def update
    respond_to do |format|
      if @board_post.update(board_post_params)
        format.html { redirect_to @board_post, notice: 'Board post was successfully updated.' }
        format.json { render :show, status: :ok, location: @board_post }
      else
        format.html { render :edit }
        format.json { render json: @board_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /board_posts/1
  # DELETE /board_posts/1.json
  def destroy
    @board_post.destroy
    respond_to do |format|
      format.html { redirect_to board_posts_url, notice: 'Board post was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_board_post
      @board_post = BoardPost.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def board_post_params
      params[:board_post]
    end
end
