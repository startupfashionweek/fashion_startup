class WelcomeController < ApplicationController
  def index
    @subscriber = Subscriber.new
    @codebox = FpCodebox.find(1)
    @feature_boxes = FeatureBox.all.order(id: :asc)
  end
end
