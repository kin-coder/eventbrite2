class UsersController < ApplicationController
  def show

  #@user = User.find(params[:id])
    #@user = User.find(session[:user_id])
    #@user.users_id = User.find(params[:users_id]).id
    #@user ||= User.find(session[:user_id])


   params[:id].to_i == current_user.id
  #else
    #redirect_to user_session_path(current_user.id)

    #@user = User.find(params[:id])  # Active Storage

  end

  before_action :authenticate_user!, only: [:show]

end
