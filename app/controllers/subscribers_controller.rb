class SubscribersController < ApplicationController
after_filter :send_email_to_subscribers, only: :create

  def new
    @subscriber = Subscriber.new
  end

  def create
    @subscriber = Subscriber.new(subscriber_params)
    if @subscriber.save
      SubscriptionMailer.send_email(@subscriber).deliver
      redirect_to root_url
    end
  end


private

  def subscriber_params
    params.require(:subscriber).permit(:email)
  end

  def send_email_to_subscribers
    Subscriber.all.each do |subscriber|
      SubscriptionMailer.send_email(subscriber.email)
    end
  end

end