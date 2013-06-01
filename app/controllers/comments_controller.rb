class CommentsController < ApplicationController
  def index
    @comments = Comment.order(created_at: :desc).limit(50).reverse
  end

  def create
    comment = Comment.new(comment_params)
    if comment.save
      head :created
    else
      head :bad_request
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:name, :text)
  end
end
