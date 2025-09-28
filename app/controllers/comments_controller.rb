class CommentsController < ApplicationController
  before_action :set_comment, only: [:edit,:update,:destroy]

  def index
    @comments = Comment.all
  end
  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.new(comment_params)
    if @comment.save
      redirect_to item_path(@comment.id)
    else
      @item = @comment.item
      @comments = @item.comments
      render 'item/show'
    end
  end
  def edit
  end

  def update
    if @comment.update(comment_params)
      redirect_to item_path(@item.comment)     
    end
  end

  def destroy
    if @comment.destroy
      redirect_to item_path
    end
  end

  private
  def comment_params
    params.require(:comment).permit(:text).merge(user_id: current_user.id, item_id: params[:item_id])
  end

  def set_comment
    @comment = Comment.find(params[:id])
  end
end
