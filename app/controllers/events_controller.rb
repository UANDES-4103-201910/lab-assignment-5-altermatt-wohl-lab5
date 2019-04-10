class EventsController < ApplicationController
	def show
	
	end
	def create 
	 evento=Event.new(params[:event])
	 evento.save!
	end
	def update
	 evento = event.find(params[:name])
	 evento.update!(event_params)
	end
	def destroy
	 event = current_account.event.find(params[:name])
	 event.destroy!
	end
end
