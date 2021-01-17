class SearchController < ApplicationController
  def index
    @text = params[:text]
    @images = ImageFacade
  end
end
