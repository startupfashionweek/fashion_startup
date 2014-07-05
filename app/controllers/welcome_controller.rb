class WelcomeController < ApplicationController
  def index
    @subscriber = Subscriber.new
    @startup = Feature.startup
    @sponsor = Feature.sponsor
    @event = EventSpotlight.find(1)
  end
end
