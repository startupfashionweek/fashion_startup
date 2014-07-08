class FeaturesController < ApplicationController

  def show
    featured = Feature.find_by(id: params[:id])
    featurable = params[:featurable_type].constantize.find(params[:featurable_id])
    if featurable && featured.update_attribute(:featurable_id, params[:featurable_id])
      flash[:alert] = "You have set the spotlight to #{featurable.name}"
    else
      flash[:alert] = "Unable to update"
    end
    redirect_to "/admin/#{featurable.class.to_s.downcase.pluralize}/"
  end

end