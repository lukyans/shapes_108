class ShapeUsersController < ApplicationController
  before_action :find_shape, only: [:add, :hide]

  def add
    unless @current_launchpad.shapes.include?(@chosen_shape)
      @shape_user = ShapeUser.new
      @shape_user.shape_id = @chosen_shape.id
      @shape_user.user = current_user
      @shape_user.launchpad_id = @current_launchpad.id
      @shape_user.save
    end
    redirect_to launchpad_path(@current_launchpad)
  end

  def hide
    @current_launchpad.shape_users.find_by(shape_id: @chosen_shape).destroy
    redirect_to launchpad_path(@current_launchpad)
  end

  private
    def find_shape
      @chosen_shape = Shape.find(params[:id])
    end

    def shape_user_params
      params.require(:shape_user).permit( :shape_id, :launchpad_id)
    end
end
