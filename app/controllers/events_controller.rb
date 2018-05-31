class EventsController < ApplicationController

  before_action :set_event, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :home]

  # GET /events
  # GET /events.json
  def index
    @events = Event.all
  end

  # GET /events/1
  # GET /events/1.json
  def show
  end

  # GET /events/new
  def new
    @event = current_user.events.build 
  end

  # GET /events/1/edit
  def edit 
  end

  # POST /events
  # POST /events.json
  def create
    @event = current_user.events.build(event_params)
      if @event.save
        #UserMailer.delay(run_at: @event.start_time).create_event(current_user, @event)
        redirect_to events_path, success: 'Event was successfully created.'
      else
        flash.now[:danger] = "Error: Event doesn't created"
        render :new 
      end   
  end

  # PATCH/PUT /events/1
  # PATCH/PUT /events/1.json
  def update
      if @event.update(event_params)
        redirect_to @event, success: 'Event was successfully updated.' 
      else
        flash.now[:danger] = "Error: Event doesn't update"
        render :edit 
      end 
  end

  # DELETE /events/1
  # DELETE /events/1.json
  def destroy
    @event.destroy
    redirect_to events_url, success: 'Event was successfully destroyed.'
  end


  def home
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_event
      @event = Event.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def event_params
      params.require(:event).permit(:name, :start_time)
    end
end
