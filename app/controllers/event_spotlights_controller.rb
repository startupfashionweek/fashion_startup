class EventSpotlightsController < ApplicationController
  def show
    @event = EventSpotlight.find(params[:id])
  end
end
