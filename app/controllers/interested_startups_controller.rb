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
