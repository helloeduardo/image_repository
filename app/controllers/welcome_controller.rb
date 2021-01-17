class WelcomeController < ApplicationController
  def index
    @colors = %w(Black Blue Brown Gray Green Orange Pink Purple Red Teal White Yellow Monochrome)
  end
end
