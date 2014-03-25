class SubscribersController < ApplicationController
# after_filter :send_email_to_subscribers, only: :create

  def new
    @subscriber = Subscriber.new
  end

  def create
    @subscriber = Subscriber.new(subscriber_params)

    respond_to do |format|
      if @subscriber.save
        SubscriptionMailer.send_email(@subscriber).deliver
        format.html { redirect_to(root_url, :notice => 'Thank you for subscribing!') }
        format.xml { render :xml => @subscriber, :status => :created, :location => @subscriber }
      else
        format.html {render :action => "new"}
        format.xml {render :xml => @subscriber.errors, :status => :unprocessable_entity}
      end
    end
  end


private

  def subscriber_params
    params.require(:subscriber).permit(:email)
  end

  # def send_email_to_subscribers
  #   Subscriber.all.each do |subscriber|
  #     SubscriptionMailer.send_email(subscriber.email)
  #   end
  # end

end