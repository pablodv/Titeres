class VideosController < InheritedResources::Base
  layout :resolve_layout

  private

  def resolve_layout
    case action_name
      when "index"
        "fancybox"
      when "show"
        false
    end
  end

  def collection
    @videos ||= end_of_association_chain.published
  end
end
