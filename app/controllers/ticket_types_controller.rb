class TicketTypesController < ApplicationController
	def show
	 @tickettype = TicketType.find(params[:id]) 
         render json: @tickettype
	end
	def create
	 @tickettype = TicketType.new(params[:ticket])
	 @tickettype.save!
	end
	def update
	 @tickettype = TicketType.find(params[:id])
	 @tickettype.update!(tickettype_params)
	end
	def destroy
	 @tickettype = TicketType.find(params[:id])
	 @tickettype.destroy!
	end
end
