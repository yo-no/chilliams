class Admin::ShowsController < ApplicationController

  before_filter :authenticate_user!

  def index
  @shows = Show.all.sort_by { |show| show.date }
  end

  def new
    @show = Show.new
  end

  def create
    @show = Show.new(show_params)
    if @show.save!
      flash[:success] = "show created!"
      redirect_to '/shows'
    else
      flash[:error] = "show failed to upload"
      render :new
    end
  end

  def edit
    @show = Show.find(params[:id])
  end

  def update
    @show = Show.find(params[:id])
    if @show.update(show_params)
      flash[:success]= "show has been successfully updated."
      redirect_to "/videos"
    else
      flash[:error] = "lets try that again"
      render :edit 
    end
  end

  def destroy
    @show = Show.find(params[:id])
    @show.destroy
    redirect_to "/admin/shows"
  end

  private

  def show_params
    params.require(:show).permit(:date, :description, :location, :url)
  end

end
