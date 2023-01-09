class ApplicationController < ActionController::Base

    protected
    def after_sign_in_path_for(user)
        user.admin_enabled? ? admin_products_path : products_path
    end

end
