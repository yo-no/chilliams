class ShowsController < ApplicationController
  def index
    @shows = Show.all.where('date >= ?', Date.today).sort_by { |show| show.date }
  end
end
