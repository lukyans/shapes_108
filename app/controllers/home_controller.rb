class HomeController < ApplicationController
  def index
    @shapes = Shape.all
  end
end
