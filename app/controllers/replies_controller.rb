class RepliesController < ApplicationController

 def create
  @reply = Reply.new(reply_params)
  if @reply.save
    redirect_to item_path(@reply.comment)
    @comment = @reply.comment
    @replies = @comment.replies
  end
end
private
def reply_params
  params.require(:reply).permit(:context).merge(user_id: current_user.id, item_id: params[:item_id], comment_id: params[:comment_id])
end
end
