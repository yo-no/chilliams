class ShowsController < ApplicationController
  def index
    @shows = Show.all.where('date >= ?', Date.today)
  end
end
