class EventVenuesController < ApplicationController
	def show
	 @eventvenue = EventVenue.find(params[:id]) 
         render json: @eventvenue
	end
	def create
	 @eventvenue = EventVenue.new(params[:eventvenue])
	 @eventvenue.save!
	end
	def update
	 @eventvenue = EventVenue.find(params[:id])
	 @eventvenue.update!(eventvenue_params)
	end
	def destroy
	 @eventvenue = EventVenue.find(params[:id])
	 @eventvenue.destroy!
	end
end
