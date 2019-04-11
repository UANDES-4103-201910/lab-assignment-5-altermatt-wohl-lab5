class EventVenue < ApplicationRecord
  def create
    @event_venue = EventVenue.new(user_params)

    respond_to do |format|
      if @event_venue.save
        format.html { redirect_to @event_venue, notice: 'Event Venue was successfully created.' }
        format.json { render :show, status: :created, location: @event_venue }
      else
        format.html { render :new }
        format.json { render json: @event_venue.errors, status: :unprocessable_entity }
      end
    end
  end
  def destroy
    @event_venue.destroy
    respond_to do |format|
      format.html { redirect_to event_venues_url, notice: 'Event Venue was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  def update
    respond_to do |format|
      if @event_venue.update(user_params)
        format.html { redirect_to @event_venue, notice: 'Event Venue was successfully updated.' }
        format.json { render :show, status: :ok, location: @event_venue }
      else
        format.html { render :edit }
        format.json { render json: @event_venue.errors, status: :unprocessable_entity }
      end
    end
  end
end
