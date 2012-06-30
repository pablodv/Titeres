class GalleriesController < InheritedResources::Base
  layout :resolve_layout

  private

  def resolve_layout
    case action_name
      when "index"
        "fancybox"
      when "show"
        "gallery"
    end
  end

  def collection
    @galleries ||= end_of_association_chain.published
  end
end
