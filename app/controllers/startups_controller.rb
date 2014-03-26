class StartupsController < ApplicationController
  def index
    @startups = Startup.all
  end

  def show

  end

  def new
    @startup = Startup.new
  end

  def create
    @startup = Startup.new(startup_params)
  end

private
  def startup_params
    params.require(:startup).permit(:name, :socialmedia_links, :short_description, :description, :logo, :remove_logo)
  end
end
