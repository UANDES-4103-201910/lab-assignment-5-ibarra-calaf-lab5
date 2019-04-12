class TicketsController < ApplicationController
  def create
    @ticket = Ticket.create(ticket_params)
    render json: @ticket 
  end

  def destroy
    @ticket = Ticket.find(params[:id])
    ticket.destroy(ticket_params)
    render json: @ticket 
  end

  def update
    @ticket = Ticket.find(params[:id])
    ticket.update(ticket_params)
    render json: @ticket 
  end
end
