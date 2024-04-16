class VideoCoverLettersController < ApplicationController
  def index
    @videos = VideoCoverLetter.all
  end

  def show
    @video = VideoCoverLetter.find(params[:id])
  end
end
