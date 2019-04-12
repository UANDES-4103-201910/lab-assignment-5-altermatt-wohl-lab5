class EventsController < ApplicationController
  before_action :set_event, only: [:show,:update,:edit, :destroy, :upcoming_event]
  def show
    @event = Event.find(params[:id])
    respond_to do |format|
      format.html
      format.json { render json: @event }
    end
  end
  def edit
  end
  def create
    @event = Event.new(event_params)

    respond_to do |format|
      if @event.save
        format.html { redirect_to @event, notice: 'Event was successfully created.' }
        format.json { render :show, status: :created, location: @event }
      else
        format.html { render :new }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end
  def destroy
    @event.destroy
    respond_to do |format|
      format.html { redirect_to events_url, notice: 'Event was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  def update
    respond_to do |format|
      if @event.update(event_params)
        format.html { redirect_to @event, notice: 'Event was successfully updated.' }
        format.json { render :show, status: :ok, location: @event }
      else
        format.html { render :edit }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end
  def upcoming_events
    @event = Event.where('start >= ?', Date.today).order(:start).paginate(:per_page => 10, :page => params[:page]).all
    respond_to do |format|
      @event.show
    end
  end
end
