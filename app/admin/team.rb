ActiveAdmin.register Team do


  # See permitted parameters documentation:
  # https://github.com/gregbell/active_admin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  permit_params :name, :role, :picture, :linkedin_link, :twitter_link, :facebook_link, :status
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
      f.input :status, :as => :select, :collection => ["management team", "advisory board"]
      f.input :name
      f.input :role
      f.input :picture
      f.input :twitter_link
      f.input :linkedin_link
      f.input :facebook_link

    end
    f.actions
  end
end
