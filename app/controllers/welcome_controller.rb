class WelcomeController < ApplicationController
  def index
    @subscriber = Subscriber.new
    @featured = Spotlight.find(1).currently_featured
    @sponsor = SponsorSpotlight.find(1).sponsor_featured
  end
end
