class CallbacksController < ApplicationController

 def render_hash
  #Reder hash on the page to see whats comingS
  render json: request.env['omniauth.auth']
end


  def google_oauth2
    # You need to implement the method below in your model (e.g. app/models/user.rb)
    @user = User.from_omniauth(request.env["omniauth.auth"])
    if @user.persisted?
      #sign_in_and_redirect @user
      redirect_to '/api/books'
      set_flash_message(:notice, :success, :kind => "google") if is_navigational_format?
    else
      session["devise.google_data"] = request.env["omniauth.auth"]
      redirect_to new_user_registration_url
    end
  end


   def facebook
    # You need to implement the method below in your model (e.g. app/models/user.rb)
    @user = User.from_omniauth(request.env["omniauth.auth"])
    if @user.persisted?
      #sign_in_and_redirect @user
      redirect_to '/api/books'
      set_flash_message(:notice, :success, :kind => "Facebook") if is_navigational_format?
    else
      session["devise.facebook_data"] = request.env["omniauth.auth"]
      redirect_to new_user_registration_url
    end
  end

  private

  def user_params
  	params.require(:user).permit(:name)
  end
end