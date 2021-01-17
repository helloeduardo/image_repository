class SearchController < ApplicationController
  def index
    @params = search_params
    @images = ImageFacade.images(search_params)
  end

  def search_params
    params.permit(:text, :color, :aspect, :image_url)
  end
end
