class CommentsController < ApplicationController
  def new
    @comment = Comment.new
  end
  
  def create
    #binding.pry
    @comment = current_user.comments.new(comment_params)
    #binding.pry
    if @comment.save
      redirect_to topics_path, success: '投稿しました'
    else
      redirect_to topics_path, danger: '失敗しました'
    end
  end
  
  def destroy
    @comment = Comment.find_by(user_id: current_user.id ,topic_id: params[:topic_id])
    #@comment = Comment.find_by(user_id: current_user.id , comment_content: params[:comment_content] , topic_id: params[:topic_id])
    @comment.destroy
    redirect_to topics_path, success: 'コメントを削除しました'
  end
  
  private
  def comment_params
    params.require(:comment).permit(:comment_content , :user_id , :topic_id)
  end
  
end
