class EventsController < ApplicationController
  def create
    @event = Event.create(event_params)
    render json: @event 
  end

  def destroy
    @event = Event.find(params[:id])
    @event.destroy(event_params)
    render json: @event
  end

  def update
    @event = Event.find(params[:id])
    @event.update(event_params)
    render json: @event
  end
end
