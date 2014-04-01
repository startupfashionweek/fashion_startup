class SpotlightsController < ApplicationController
  def update
    @spotlight = Spotlight.find_or_create_by(id: params[:id])
    @startup = Startup.find(params[:startup_id])
    if @startup && @spotlight.update_attribute(:startup_id, params[:startup_id])
      flash[:alert] = "You have set the spotlight project to #{@startup.name}"
      redirect_to admin_startups_path
    else
      flash[:alert] = "Unable to update"
      redirect_to admin_startups_path
    end
  end

end
