ActiveAdmin.register FeatureBox do
  actions :all, :except => [:new, :destroy]
  config.filters = false

  permit_params :name, :feature_content, :feature_photo

  index as: :grid, columns: 4 do |fb|
    link_to admin_feature_box_path(fb) do
      ("<div class='wrapper'>
          <h1>#{fb.name.upcase}</h1>
          <img src='#{fb.feature_photo_url}' width='300' height='300'>
          <p>#{fb.feature_content}</p>
        </div>
      ").html_safe
    end
  end

  form do |f|
    f.inputs do
      f.input :feature_content
      f.input :feature_photo
    end
    f.actions
  end

end
