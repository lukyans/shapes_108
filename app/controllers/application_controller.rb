class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :current_launchpad

  def after_sign_in_path_for(resource)
    current_launchpad
    launchpad_path(@current_launchpad)
  end

  private
    def current_launchpad
      if current_user
        launchpad = Launchpad.find_by(:id => current_user.id)
        if launchpad.present?
          @current_launchpad = launchpad
        else
         @current_launchpad = Launchpad.create(id: current_user.id)
        end
      end
    end
end
