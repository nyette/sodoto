# frozen_string_literal: true

# Manage comments
class CommentsController < ApplicationController
  before_action :set_comment, only: %i[show update destroy]

  def index
    @video_upload = VideoUpload.find(params[:video_upload_id])
    @comments = @video_upload.comments.all
    render json: @comments, status: :ok
  end

  def show
    render json: @comment, status: :ok
  end

  def create
    @comment = Comment.new(comment_params)
    if @comment.save
      render json: @comment, status: :ok
    else
      render json: @comment.errors, status: :unprocessable_entity
    end
  end

  def update
    if @comment.update(comment_params)
      render json: @comment, status: :ok
    else
      render json: @comment.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @comment.destroy!
    if @comment.destroyed?
      render json: 'OK', status: :ok
    else
      render json: @comment.errors, status: :unprocessable_entity
    end
  end

  private

  def set_comment
    if Comment.exists?(params[:id])
      @comment = Comment.find(params[:id])
    else
      render json: 'Yikes', status: :not_found
    end
  end

  def comment_params
    params.require(:comment).permit(:content, :video_upload_id)
  end
end
