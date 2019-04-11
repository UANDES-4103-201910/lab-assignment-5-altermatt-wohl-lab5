class EventsController < ApplicationController
	def show
	 @event = Event.find(params[:id]) 
         render json: @event
	end
	def create 
	 @event = Event.new(params[:event])
	 @event.save!
	end
	def update
	 @event = Event.find(params[:id])
	 @event.update!(event_params)
	end
	def destroy
	 @event = Event.find(params[:id])
	 @event.destroy!
	end
end
