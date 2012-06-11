class GalleriesController < InheritedResources::Base

  private

  def collection
    @galleries ||= end_of_association_chain.published
  end
end
