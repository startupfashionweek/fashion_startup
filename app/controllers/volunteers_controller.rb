class VolunteersController < ApplicationController
  def index
    @mailer_volunteer = MailerVolunteer.new
    @volunteer = Volunteer.all
  end

  def new
    @volunteer = Volunteer.new
  end

  def create
    @volunteer = Volunteer.new(volunteer_params)
    if @volunteer.save
    else
        render :new
    end
  end
private
  def volunteer_params
    params.require(:volunteer).permit(:position)
  end
end
