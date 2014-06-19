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

  #scopes
  scope :Platinum
  scope :Gold
  scope :Silver
  scope :Bronze
  scope :Partners

  form do |f|
    f.inputs do
      f.input :name
      f.input :sponsor_logo
      f.input :website
      f.input :level, :as => :select, :collection => ["Platinum", "Gold", "Silver", "Bronze", "Partners"]
    end
  end


end
