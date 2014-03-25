class VolunteerMailer < ActionMailer::Base
  default from: "volunteer@startupfashionweek.com"
  # default :bcc => "volunteer@startupfashionweek.com"
  def send_email(volunteer)
    @volunteer = volunteer
    mail(to: volunteer.email, subject: 'Welcome to Fashion Startup')
  end
end
