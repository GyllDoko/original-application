class CommentsController < ApplicationController
  before_action :set_comment, only: %i[ show edit update destroy ]

  #
  def index 
   
  end
  def get_comments 
    @product = Product.find_by(id: params[:comment_id])
    render json: @product.comments.all
  end

  def get_comment_user
    @user = User.find_by(id: params[:user_id])
    render json: @user
  end
  

  # POST /comments or /comments.json
  def create
    @comment = Comment.new(comment_params)
      if @comment.save
        render json: @comment, status: :created
      else
        render json: @comment.errors.messages, status: :unprocessable_entity 
      end
    end
  

  # PATCH/PUT /comments/1 or /comments/1.json
  def update
    respond_to do |format|
      if @comment.update(comment_params)
        format.html { redirect_to @comment, notice: "Comment was successfully updated." }
        format.json { render :show, status: :ok, location: @comment }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /comments/1 or /comments/1.json
  def destroy
    @comment.destroy
    respond_to do |format|
      format.html { redirect_to comments_url, notice: "Comment was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_comment
      @comment = Comment.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def comment_params
      params.require(:comment).permit(:user_id, :product_id, :description)
    end
end
