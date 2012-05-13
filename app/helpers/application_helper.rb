module ApplicationHelper
  def make_mistake(resource, field)
    if resource.errors.include?(:name)
      content_tag :small, "#{field.to_s.titleize} #{resource.errors[:name][0]}", :class => "error"
    end
  end
end
