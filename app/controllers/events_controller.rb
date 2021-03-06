class EventsController < ApplicationController
  before_action :logged_in_user, only: [:create]
  def new
     @event = current_user.events.build
  end
  def index
	    @events = Event.all
	end
  def create
	    @event = current_user.events.create(name: params[:event][:name], 
	                                        description: params[:event][:description], 
	                                        date: params[:event][:date])
	
	    if @event.save
	      redirect_to @event
	    else
	      render :new
	    end
  end
  def show 
	    @event = Event.find(params[:id])
	end

end
