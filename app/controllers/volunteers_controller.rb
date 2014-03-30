class VolunteersController < ApplicationController
  def index
    @mailer_volunteer = MailerVolunteer.new
  end
  def new
    @volunteer = Volunteer.new
  end


end
