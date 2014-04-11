class SponsorsController < InheritedResources::Base
  def index
    @sponsors = Sponsors.all
  end

  def show
    @sponsor = Sponsor.find(params[:id])
  end

  def edit
    @sponsor = Sponsor.find(params[:id])
  end

  def new
    @sponsor = Sponsor.new
  end

  def create
    @sponsor = Sponsor.new(sponsor_params)
    if @sponsor.save
    else
        render :new
    end
  end

private
  def sponsor_params
    params.require(:sponsor).permit(:name, :description, :url)
  end
end
