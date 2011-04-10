module ApplicationHelper

  def get_url_form_resource
    if resource.id==nil
      collection_url
    else
      resource_url
    end
  end

  def main_navigation(menu)
    menu.item "link1", "link1"
    menu.item "link2", "link2", :active => true
  end

end
