class ShowsController < ApplicationController
  def index
    @shows = Show.all
  end

  def new
    @show = Show.new
  end

  def create
    show = Show.create(
                      date: params["date"],
                      description: params["description"],
                      location: params["location"],
                      url: params["url"]
                      )
    redirect_to "/shows"
  end

  def edit
    @show = Show.find(params[:id])
  end

  def update
    @show = Show.find(params[:id])
    show = @show.update(
                      date: params["date"],
                      description: params["description"],
                      location: params["location"],
                      url: params["url"]
                      )
    redirect_to "/shows"
  end

  def destroy
    @show = Show.find(params[:id])
    @show.destroy
    redirect_to "/"
  end

end
