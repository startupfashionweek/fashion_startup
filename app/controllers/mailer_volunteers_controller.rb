class MailerVolunteersController < ApplicationController
  def index
    @mailer_volunteer = MailerVolunteer.new
  end
  def new
    @mailer_volunteer = MailerVolunteer.new
  end

  def create
    @mailer_volunteer = MailerVolunteer.new(mailer_volunteer_params)

    respond_to do |format|
      if @mailer_volunteer.save
        VolunteerMailer.send_email(@mailer_volunteer).deliver
        format.html { redirect_to(root_url, :notice => 'Thank you for submitting!') }
        format.xml { render :xml => @mailer_volunteer, :status => :created, :location => @mailer_volunteer }
      else
        format.html {render :action => "new"}
        format.xml {render :xml => @mailer_volunteer.errors, :status => :unprocessable_entity}
      end
    end
  end

private

  def mailer_volunteer_params
    params.require(:mailer_volunteer).permit(:name, :email, :position, :linkedin, :phone_number, :reason)
  end
end

