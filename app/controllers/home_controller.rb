class HomeController < ApplicationController
  def index
    @shapes = Shape.active_shapes
  end
end
