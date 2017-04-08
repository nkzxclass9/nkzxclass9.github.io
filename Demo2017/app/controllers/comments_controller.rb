class CommentsController < ApplicationController
  def index
    @comments = Comment.order('created_at ASC')
    @comment = Comment.new
  end

  def create
    #render plain: comment_params.to_yaml and return
    @comment = Comment.new comment_params
    respond_to do |format|
      @comment.save
      format.js
    end
    # mass assignment vulnerability
    # if
    #   redirect_to comments_path
    # else
    #   @comments = Comment.order('created_at ASC')
    #   render :index
    # end
  end

  private

  def comment_params
    params.require(:comment).permit(:body, :author)
  end
end