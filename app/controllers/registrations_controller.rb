class RegistrationsController < Devise::RegistrationsController
    def new
        super
    end

    def create
        super
        resource.save!
        Profile.create!(username: params[:user][:username], user_id: resource.id)
    end

    private
    def user_registration_params
        params.require(:user).permit(
            :email,
            :password,
            :password_confirmation
        )
    end

    def profile_registration_params
        params.require(:profile).permit(:username)
    end
end