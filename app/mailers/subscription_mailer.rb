class SubscriptionMailer < ActionMailer::Base
default :from => "info@startupfashionweek.com"
  def send_email(email)
    mail(to: email, subject: 'Welcome to Fashion Startup')
  end
end
