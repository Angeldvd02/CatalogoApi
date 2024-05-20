class CommentsController < ApplicationController
    before_action :set_comment, only: %i[ show update destroy ]

  
  def index
    @comments = Comment.all

    render json: @comments
  end

  
  def show
    render json: @comments
  end

  
  def create
    @comments = Comment.new(comment_params)

    if @comments.save
      render json: @comments, status: :created, location: @comments
    else
      render json: @comments.errors, status: :unprocessable_entity
    end
  end

  
  def update
    if @comments.update(comment_params)
      render json: @comments
    else
      render json: @comments.errors, status: :unprocessable_entity
    end
  end

  
  def destroy
    @comments.destroy!
  end

  private
  def set_comment
      @comments = Comment.find(params[:id])
    end
    def comment_params
      params.require(:comment).permit(:comment, :product_id)
    end      
end
