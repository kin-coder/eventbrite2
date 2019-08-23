class EventsController < ApplicationController
  def index

    @event = Event.all

  end

  def new

    @event = Event.new

  end


  def show

    @event = Event.find(params[:id])



  end


  def create




    @event = Event.create(start_date:params[:start_date],duration:params[:duration],title:params[:title],description:params[:description],price:params[:price],
      location:params[:location],admin_id:current_user.id)
    if @event.save
      redirect_to "/"
    end
    #@event = Event.create(event_params)




    # POURQUOI ça MARCHE sans ce TRUC?????


    #@event = Event.find(params[:event_id])
    #@event.avatar.attach(params[:avatar])
    #redirect_to(event_path(@event))

  end

#private
 #def event_params
  #params.require(:event).permit(:start_date)
 #end




before_action :authenticate_user!, only: [:index, :new]
end
