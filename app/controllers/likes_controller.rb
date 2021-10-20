class LikesController < ApplicationController
  before_action :set_like, only: %i[ show edit update destroy ]

    def get_likes 
      @comment = Comment.find_by(id: 
      params[:comment_id]
      )
      render json: @comment.likes.all    
    end
  # GET /likes or /likes.json
  def index
    @likes = Like.all
  end

  # GET /likes/1 or /likes/1.json
  def show
  end

  # GET /likes/new
  def new
    @like = Like.new
  end

  # GET /likes/1/edit
  def edit
  end

  # POST /likes or /likes.json
  def create
    @like = Like.new(like_params)

      if @like.save
        render json: @like, status: :created
      else
        render json: @like.errors, status: :unprocessable_entity 
      end
    
  end

  def dislike
    @like = Like.where(user_id: params[:user_id]).where(comment_id: params[:comment_id]).first
    @like.destroy
      head(:ok)
  end

  # PATCH/PUT /likes/1 or /likes/1.json
  def update
    respond_to do |format|
      if @like.update(like_params)
        format.html { redirect_to @like, notice: "Like was successfully updated." }
        format.json { render :show, status: :ok, location: @like }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @like.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /likes/1 or /likes/1.json
  def destroy
    @like.destroy
    respond_to do |format|
      format.html { redirect_to likes_url, notice: "Like was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_like
      @like = Like.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def like_params
      params.require(:like).permit(:user_id, :product_id, :value, :comment_id)
    end
end
