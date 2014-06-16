class StartupsController < ApplicationController

  def show
    @startup = Startup.find(params[:id])
    @startups = Startup.all
    @interested_startup = InterestedStartup.new()
  end

  def edit
    @startup = Startup.find(params[:id])
  end

  def new
    @startup = Startup.new
  end

  def create
    @startup = Startup.new(startup_params)
    if @startup.save
    else
      render :new
    end
  end

private
  def startup_params
    params.require(:startup).permit(:name, :socialmedia_links, :short_description, :description, :logo, :cover_image, :twitter_link, :app_link, :challenge, :website)
  end
end
