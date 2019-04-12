class TicketTypesController < ApplicationController
  def create
    @ticket = TicketType.create(ticket_params)
    render json: @ticket 
  end

  def destroy
    @ticket_type = TicketType.find(params[:id])
    @ticket_type.destroy(ticket_type_params)
    render json: @ticket_type
  end

  def update
    @ticket_type = TicketType.find(params[:id])
    @ticket_type.update(ticket_type_params)
    render json: @ticket_type
  end
end
