class Api::V1::EventsController < ApplicationController
  def index
    @events = Event.all
    
    respond_to do |format|
      format.json { render :json => @events }
    end
  end
  
  def show
    @event = Event.find(params[:id])
    
    respond_to do |format|
      format.json { render :json => @event }
    end
  end
end
