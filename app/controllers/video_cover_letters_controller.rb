# frozen_string_literal: true

# Tutorial class with some methods that no longer make sense...
class VideoCoverLettersController < ApplicationController
  def index
    @videos = VideoCoverLetter.all
  end

  def show
    @video = VideoCoverLetter.find(params[:id])
  end

  def edit
    @video_cover_letter = VideoCoverLetter.find(params[:id])
  end

  def update
    @video_cover_letter = VideoCoverLetter.find(params[:id])
    if @video_cover_letter.update(video_params)
      redirect_to @video_cover_letter
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private

  def video_params
    params.require(:video_cover_letter).permit(:title, :description, :url)
  end
end
