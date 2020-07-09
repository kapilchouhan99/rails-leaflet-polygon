class HomeController < ApplicationController
  def index
    @polygons = Polygon.all
  end
end
