class CommentsController < ApplicationController
  before_action :authenticate_user!


  # POST /comments
  # POST /comments.json
  def create
    @comment = Comment.new(comment_params)
    @comment.user = current_user
    @framework = Framework.find(params[:framework_id])
    @comment.framework = @framework
    if @comment.save
      redirect_to framework_path(@framework), notice: 'Comment was successfully created.'
    else
      render 'frameworks/show'
    end
  end


  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def comment_params
      params.require(:comment).permit(:comment)
    end
end
