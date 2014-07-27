ActiveAdmin.register Media do


  # See permitted parameters documentation:
  # https://github.com/gregbell/active_admin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  permit_params :select_one, :content, :pdf_files
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
      f.input :select_one, :as => :select, :collection => ["media inquiries", "press releases", "media partners", "media coverage"]
      f.input :content
      f.input :pdf_files
    end
    f.actions
  end
end
