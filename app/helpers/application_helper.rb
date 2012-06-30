module ApplicationHelper
  def make_mistake(resource, field)
    if resource.errors.include?(:name)
      content_tag :small, "#{field.to_s.titleize} #{resource.errors[:name][0]}", :class => "error"
    end
  end

  def available(resource)
    controller_name == resource ? 'current' : ''
  end

  def determinate_path(resource)
    if resource.published
      [:unpublish, :admin, resource]
    else
      [:publish, :admin, resource]
    end
  end
end
