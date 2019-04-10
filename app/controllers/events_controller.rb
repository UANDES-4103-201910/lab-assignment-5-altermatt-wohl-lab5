class EventsController < ApplicationController
	def show
	
	end
	def create 
	 evento=Event.new(params[:event])
	 evento.save!
	end
	def update
	 evento = event.find(params[:id])
	 evento.update!(event_params)
	end
	def destroy
	 event = event.find(params[:id])
	 event.destroy!
	end
end
