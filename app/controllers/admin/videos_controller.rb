class Admin::VideosController < ApplicationController

  before_filter :authenticate_user!

  def index
    @videos = Video.all
  end

  def new
    @video = Video.new
  end

  def create
    @video = Video.new(video_params)
    if @video.save!
      flash[:success] = "video created!"
      redirect_to '/videos'
    else
      flash[:error] = "video failed to upload"
      render :new
    end
  end

  def edit
    @video = Video.find(params[:id])
  end

  def update
    @video = Video.find(params[:id])
    if @video.update(video_params)
      flash[:success]= "video has been successfully updated."
      redirect_to "/videos"
    else
      flash[:error] = "lets try that again"
      render :edit 
    end
  end

  def destroy
    @video = Video.find(params[:id])
    @video.destroy
    redirect_to "/admin/videos"
  end

  private

  def video_params
    params.require(:video).permit(:title, :url)
  end

end
