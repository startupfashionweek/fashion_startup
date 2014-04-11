class SponsorSpotlightsController < ApplicationController
  def update
    @sponsor_spotlight = SponsorSpotlight.find_or_create_by(id: params[:id])
    @sponsor = Sponsor.find(params[:sponsor_id])
    if @sponsor && @sponsor_spotlight.update_attribute(:sponsor_id, params[:sponsor_id])
      flash[:alert] = "You have set the spotlight to #{@sponsor.name}"
      redirect_to admin_sponsors_path
    else
      flash[:alert] = "Unable to update"
      redirect_to admin_sponsors_path
    end
  end
end
