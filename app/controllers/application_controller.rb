class ApplicationController < ActionController::Base
    include Pundit::Authorization

    rescue_from  Pundit::NotAuthorizedError, with: :user_not_authorized

    private

    def user_not_authorized
        flash[:alert] = "fsdsd"
        redirect_to  root_path
    end
end
