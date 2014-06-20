ActiveAdmin.register Sponsor do


  # See permitted parameters documentation:
  # https://github.com/gregbell/active_admin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  permit_params :name, :description, :url, :cover_image, :logo, :facebook_link, :twitter_link, :address, :affiliation, :phone_number, :email
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
    column :url
    column :sponsor_spotlight do |sponsor|
      link_to_if SponsorSpotlight.find(1).sponsor_id != sponsor.id, 'set',
      sponsor_spotlight_path(1, { sponsor_id: sponsor.id }),
      method: :patch, action: :update
    end
  default_actions
  end
end
