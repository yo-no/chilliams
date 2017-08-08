class Admin::VideosController < ApplicationController
  def index
    @videos = Video.all
  end

  def new
    @video = Video.new
  end

  def create
    video = Video.create(
                      title: params["title"],
                      url: params["url"]
                      )
    redirect_to "/videos"
  end

  def edit
    @video = Video.find(params[:id])
  end

  def update
    @video = Video.find(params[:id])
    video = @video.update(
                      title: params["title"],
                      url: params["url"]
                      )
    redirect_to "/videos"
  end

  def destroy
    @video = Video.find(params[:id])
    @video.destroy
    redirect_to "/"
  end

end
