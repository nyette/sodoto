# frozen_string_literal: true

# Manage videos
class VideoUploadsController < ApplicationController
  before_action :set_video_upload, only: %i[show update destroy]

  def index
    @video_uploads = VideoUpload.all
    render json: @video_uploads, status: :ok
  end

  def show
    render json: @video_upload, status: :ok
  end

  def create
    @video_upload = VideoUpload.new(video_upload_params)
    if @video_upload.save
      render json: @video_upload, status: :ok
    else
      render json: @video_upload.errors, status: :unprocessable_entity
    end
  end

  def update
    if @video_upload.update(video_upload_params)
      render json: @video_upload, status: :ok
    else
      render json: @video_upload.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @video_upload.destroy!
    if @video_upload.destroyed?
      render json: 'OK', status: :ok
    else
      render json: @video_upload.errors, status: :unprocessable_entity
    end
  end

  private

  def set_video_upload
    if VideoUpload.exists?(params[:id])
      @video_upload = VideoUpload.find(params[:id])
    else
      render json: 'Yikes', status: :not_found
    end
  end

  def video_upload_params
    params.require(:video_upload).permit(:caption, :video)
  end
end
