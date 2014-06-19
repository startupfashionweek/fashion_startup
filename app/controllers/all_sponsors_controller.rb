class AllSponsorsController < ApplicationController
  def index
    @all_sponsors = AllSponsor.all
  end
end
