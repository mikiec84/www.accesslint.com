module ApplicationHelpers
  def page_title
    if content_for?(:title)
      [yield_content(:title), data.site.name].join(" - ")
    else
      [data.site.name, data.site.tagline].join(" - ")
    end
  end
end
