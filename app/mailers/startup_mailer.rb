class StartupMailer < ActionMailer::Base
  default :from => "info@startupfashionweek.com"
  def send_email(interested_startup)
    @interested_startup = interested_startup
    mail(to: interested_startup.name, subject: 'Welcome to Fashion Startup')
  end
end
