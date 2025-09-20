class CommentsController < ApplicationController
  def create
    @comment = Comment.new(comment_params)
    if @comment.create
      redirect_to item_path(@comment.item)
    else
      @item = @comment.item
      @comments = @item.comments
      render 'item/show'
    end
  end
  private
  def comment_params
    params.require(:comment).permit(:text).merge(user_id: current_user.id, item_id: params[:item_id])
  end
end
