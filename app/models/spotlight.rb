class Spotlight < ActiveRecord::Base

  def currently_featured
    return Startup.find(startup_id)
  end

end
