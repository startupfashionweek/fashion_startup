class SubscriptionMailer < ActionMailer::Base
  default from: "dang.celia@gmail.com"

  def send_email(subscriber)
    @subscriber = subscriber
    mail(to: @subscriber.email, subject: 'Welcome to Fashion Startup')
  end
end
