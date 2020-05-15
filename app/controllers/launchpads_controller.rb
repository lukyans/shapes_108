class LaunchpadsController < ApplicationController
  def show
    @launchpad = Shape.joins(:shape_user).where(shape_users: {user_id: current_user})
  end
end
