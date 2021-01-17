class SearchController < ApplicationController
  def index
    @text = params[:text]
    @images = ImageFacade.images_by_text(params[:text])
  end
end
