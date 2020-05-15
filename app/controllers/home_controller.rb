class HomeController < ApplicationController
  def index
    if user_signed_in?
      redirect_to launchpad_path(@current_launchpad)
    end
    @shapes = Shape.active_shapes
  end
end
