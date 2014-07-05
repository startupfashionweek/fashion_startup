module ApplicationHelper

  def site_name
    "Startup Fashion Week"
  end

  def titler(page_title)
    page_title.empty? ? site_name : "#{site_name} | #{page_title}"
  end

end
