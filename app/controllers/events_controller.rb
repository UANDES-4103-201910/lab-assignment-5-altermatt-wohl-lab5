class EventsController < ApplicationController
	def show
	 evento = Event.find(params[:id]) 
     render json: evento
	end
	def create 
	 evento=Event.new(params[:event])
	 evento.save!
	end
	def update
	 evento = Event.find(params[:id])
	 evento.update!(event_params)
	end
	def destroy
	 event = Event.find(params[:id])
	 event.destroy!
	end
end
