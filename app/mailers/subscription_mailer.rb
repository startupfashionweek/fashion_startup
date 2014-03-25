class SubscriptionMailer < ActionMailer::Base
default :from => "fashion@startupfashionweek.com"
  def send_email(subscriber)
    @subscriber = subscriber
    mail(to: subscriber.email, subject: 'Welcome to Fashion Startup')
  end
end
