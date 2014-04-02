class InterestedStartupsController < ApplicationController
  def new
    @interested_startup = InterestedStartup.new
  end

  def create
    @startup = Startup.find(params[:interested_startup].delete(:startup_id))
    @interested_startup = InterestedStartup.new(interested_startup_params)

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

  private

  def interested_startup_params
    params.require(:interested_startup).permit(
      :name, :contactname, :email, :logo, :headshot,
      :question1, :question2, :question3, :question4,
      :question5, :question6, :question7, :startup_id
    )
  end

end
