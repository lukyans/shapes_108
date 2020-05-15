class RegistrationsController < Devise::RegistrationsController
  protected

  def after_sign_up_path_for(resource)
    create_default_shapes_for_user
    launchpad_path(@current_launchpad)
  end

  private
    def create_default_shapes_for_user
      Shape.all.each do |shape|
        if !current_user.shapes.include?(shape) && shape.default_status == true
          @shape_user = ShapeUser.new
          @shape_user.shape_id = shape.id
          @shape_user.user = current_user
          @shape_user.launchpad_id = current_launchpad.id
          @shape_user.save
        end
      end
    end
end
