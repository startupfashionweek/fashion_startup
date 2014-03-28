class InterestedStartupsController < ApplicationController
  def new
    @interested_startup = InterestedStartup.new
  end

  def create
  @interested_startup = InterestedStartup.new(interested_startup_params)

  respond_to do |format|
    if @interested_startup.save
      InterestedStartup.send_email(@interested_startup).deliver
      format.html { redirect_to(startups_url, :notice => 'Thank you for submitting!') }
      format.xml { render :xml => @interested_startup, :status => :created, :location => @interested_startup }
    else
      format.html {render :action => "new"}
      format.xml {render :xml => @interested_startup.errors, :status => :unprocessable_entity}
    end
  end
  end

  private

  def interested_startup_params
    params.require(:interested_startup).permit(:name, :contactname, :email, :logo, :headshot, :question1, :question2, :question3, :question4, :question5, :question6, :question7)
  end

end
