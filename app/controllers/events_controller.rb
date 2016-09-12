class EventsController < ApplicationController
  
  def index
  	@events = Event.all
  end

  def new
  	@event = Event.new
  	@event_types = EventType.all
  	@friends = Friend.all
  end

  def create
  	@event = Event.new(event_params)
  	if @event.save
  		redirect_to :action => :index
  	else
  		render :new
  	end
  end
  
  private

  def event_params
      params.require(:event).permit(:title,:total_amount,:location,:event_date,:event_type_id,
      	friend_ids: [])
  end

end
