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
      f.input :title, :as => :select, :collection => ["conference speakers", "digital fashion judges", "digital fashion entrepreneurs", "workshop 1 speakers", "workshop 2 speakers", "workshop 3 speakers", "fashion show designers", "fashion show judges"]
      f.input :name
      f.input :headshot
      f.input :linkedin
      f.input :twitter

    end
    f.actions
  end

end
