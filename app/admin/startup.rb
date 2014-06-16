ActiveAdmin.register Startup do


  # See permitted parameters documentation:
  # https://github.com/gregbell/active_admin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  permit_params :name, :facebook_link, :advice, :elevator_pitch, :logo, :cover_image, :app_link, :twitter_link, :challenge, :website
  #
  # or
  #
  # permit_params do
  #  permitted = [:permitted, :attributes]
  #  permitted << :other if resource.something?
  #  permitted
  # end

  index do
    column :name
    column :website
    column :advice
    column :spotlight do |startup|
      link_to_if Spotlight.find(1).startup_id != startup.id ,'set',
      spotlight_path(1, { startup_id: startup.id}),
      method: :patch, action: :update
    end
  default_actions
  end
end
