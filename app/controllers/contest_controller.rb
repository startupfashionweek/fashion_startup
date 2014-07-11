class ContestController < ApplicationController
  def show
    @contest = Contest.find(params[:id])
  end
end
