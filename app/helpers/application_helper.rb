module ApplicationHelper

  def menu_pages
    pages = Refinery::Page.in_menu
    pages = pages.live #if current_user.blank?
    pages = pages.includes(:parent, :translations)
    pages = pages.where(:parent_id => nil)
    pages
  end

  def menu_link(item)
    text  = item.slug.titleize
    link  = item.url
    css   = 'muted' if item.draft?
    final = link_to(text, link, :class => css)
    final
  end

  def sub_menu(item)
    active = "active" if current_page?(item.url)
    string = "<li class='dropdown-submenu #{active}'>"
    string += menu_link(item)
    string += "<ul class='dropdown-menu'>"
    for sub in item.children
      string += menu_item(sub)
    end
    string += "</ul></li>"
    string.html_safe
  end

  def menu_item(item)
    text = menu_link(item)
    sub_items = item.children
    if sub_items.count > 0
      sub_menu(item)
    else
      css  = 'active' if current_page?(item.url)
      kls  = " class='#{css}'" if css
      li   = %<<li#{kls}> #{text} </li>>
      li.to_s.force_encoding("UTF-8").html_safe
    end
  end

end
