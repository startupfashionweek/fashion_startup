class InterestedStartupsController < ApplicationController
  def new
    @interested_startup = InterestedStartup.new
  end

  def create
    @startup = Startup.find(params[:interested_startup].delete(:startup_id))
    @interested_startup = InterestedStartup.new(interested_startup_params)
      # if @interested_startup.save
      #   redirect_to interested_startups_path
      # else
      #   render :new
      # end

    # respond_to do |format|
      if @interested_startup.save
        StartupMailer.send_email(@interested_startup).deliver
        redirect_to @startup, :notice => 'Thank you for submitting!'
        # format.html { redirect_to(startup_path(@startup), :notice => 'Thank you for submitting!') }
        # format.xml { render :xml => @interested_startup, :status => :created, :location => @interested_startup }
      else

        # @interested_startup.errors.full_messages do |msg|
        #   flash[:alert] << "ul"
        # end
        redirect_to @startup, :alert => @interested_startup.errors.full_messages

        # format.html {redirect_to(startup_path(@startup), :alert => @interested_startup.errors.full_messages)}
        # format.xml {render :xml => @interested_startup.errors, :status => :unprocessable_entity}
      end
  end

  def show
    @interested_startup = InterestedStartup.find(params[:id])
    @interested_startups = InterestedStartup.all
  end

  private

  def interested_startup_params
    params.require(:interested_startup).permit(
      :name, :contactname, :email, :logo, :website,
      :app_link, :facebook_link, :twitter_link, :advice,
      :elevator_pitch, :success, :challenge, :cover_image
    )
  end

end
