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
end
