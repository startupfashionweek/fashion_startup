class VolunteerMailer < ActionMailer::Base
  default from: "volunteer@startupfashionweek.com"
  # default :bcc => "volunteer@startupfashionweek.com"
  def send_email(mailer_volunteer)
    @mailer_volunteer = mailer_volunteer
    mail(to: mailer_volunteer.email, subject: 'Welcome to Fashion Startup')
  end
end
