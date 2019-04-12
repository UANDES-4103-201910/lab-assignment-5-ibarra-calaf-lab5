class EventVenuesController < ApplicationController
  def create
    @event_venues = EventVenues.create(event_venues_params)
    render json: @event_venues 
  end

  def destroy
    @event_venues = EventVenues.find(params[:id])
    @event_venues.destroy(event_venues_params)
    render json: @event_venues
  end

  def update
    @event_venues = EventVenues.find(params[:id])
    @event_venues.update(event_venues_params)
    render json: @event_venues
  end
end
