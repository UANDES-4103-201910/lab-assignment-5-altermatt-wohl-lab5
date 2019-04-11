class TicketsController < ApplicationController
	def show
	 @ticket = Ticket.find(params[:id]) 
         render json: @ticket
	end
	def create
	 @ticket = Ticket.new(params[:ticket])
	 @ticket.save!
	end
	def update
	 @ticket = Ticket.find(params[:id])
	 @ticket.update!(ticket_params)
	end
	def destroy
	 @ticket = Ticket.find(params[:id])
	 @ticket.destroy!
	end
end
