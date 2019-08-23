class AvatarsController < ApplicationController
  def create

    @user = User.find(params[:user_id])
    @user.avatar.attach(params[:avatar])
    redirect_to(user_path(@user))

  end


  def create

    @event = Event.find(params[:event_id])
    @event.avatar.attach(params[:avatar])
    redirect_to(event_path(@event))

  end

end
