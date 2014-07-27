ActiveAdmin.register Participant do


  # See permitted parameters documentation:
  # https://github.com/gregbell/active_admin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  permit_params :title, :name, :headshot, :linkedin, :twitter
  #
  # or
  #
  # permit_params do
  #  permitted = [:permitted, :attributes]
  #  permitted << :other if resource.something?
  #  permitted
  # end

  form do |f|
    f.inputs do
      f.input :title, :as => :select, :collection => ["oct. 7 -digital fashion demo presenters", "oct. 8 -conference speakers", 
        "Oct. 9 -Startup/Emerging Designers", "Oct. 9 -Digital Fashion Startups", "Oct. 9 -Exhibitors/Demo Lounge Partners"]
      f.input :name
      f.input :headshot
      f.input :linkedin
      f.input :twitter

    end
    f.actions
  end

end
