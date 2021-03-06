# frozen_string_literal: true

class Users::SessionsController < Devise::SessionsController
  # before_action :configure_sign_in_params, only: [:create]

  # GET /resource/sign_in
  def new
    super
  end

  # POST /resource/sign_in
  def create
    resource = User.find_for_database_authentication(email: params[:email])
    return render json: {errors: invalid_login_attempt } unless resource

    if resource.valid_password?(params[:password])
      sign_in :user, resource
      redirect_to letters_timer_path
      # return render nothing: true
    else
      render json: {errors: invalid_login_attempt }
    end
  end

  # DELETE /resource/sign_out
  # def destroy
  #   super
  # end

  protected
  
  def invalid_login_attempt
    set_flash_message(:alert, :invalid)
  end
  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_in_params
  #   devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
  # end
end
