class Users::RegistrationsLoyalty < ApplicationLoyalty
    # def new
    # end

    # POST /resource

    # GET /resource/edit
    def edit?
      user.admin?
    end

    # PUT /resource

    # DELETE /resource

    # GET /resource/cancel
end
