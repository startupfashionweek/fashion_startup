class WelcomeController < ApplicationController
  def index
    @subscriber = Subscriber.new
    @featured = Spotlight.find(1).currently_featured
  end
end
