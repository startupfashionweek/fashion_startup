class VolunteersController < ApplicationController
  def index
    @volunteer = Volunteer.new
  end
  def new
    @volunteer = Volunteer.new
  end

  def create
    @volunteer = Volunteer.new(volunteer_params)

    respond_to do |format|
      if @volunteer.save
        VolunteerMailer.send_email(@volunteer).deliver
        format.html { redirect_to(root_url, :notice => 'Thank you for submitting!') }
        format.xml { render :xml => @volunteer, :status => :created, :location => @volunteer }
      else
        format.html {render :action => "new"}
        format.xml {render :xml => @volunteer.errors, :status => :unprocessable_entity}
      end
    end
  end

private

  def volunteer_params
    params.require(:volunteer).permit(:name, :email, :position, :linkedin, :phone_number, :reason)
  end
end
