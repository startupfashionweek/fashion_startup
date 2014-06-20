ActiveAdmin.register AllSponsor do


  # See permitted parameters documentation:
  # https://github.com/gregbell/active_admin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  permit_params :name, :sponsor_logo, :website, :level
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
      f.input :name
      f.input :sponsor_logo
      f.input :website
      f.input :level, :as => :select, :collection => ["platinum", "gold", "silver", "bronze", "partners"]

    end
    f.actions
  end


end
