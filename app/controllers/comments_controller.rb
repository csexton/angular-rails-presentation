class CommentsController < ApplicationController
  def index
    @comments = Comment.all
  end

  def create
    head :created
  end
end
